provider "pingone" {
  client_id                    = var.worker_id
  client_secret                = var.worker_secret
  environment_id               = var.admin_env_id
  region                       = var.region
  force_delete_production_type = false
}

data "pingone_licenses" "internal_license" {
  organization_id = var.organization_id

  data_filter {
    name   = "package"
    values = ["${var.license_name}"]
  }

  data_filter {
    name   = "status"
    values = ["ACTIVE"]
  }
}

resource "pingone_environment" "my_environment" {
  name        = "One-Facile - ${var.company_name}"
  description = "Used to demo P1 Protect with OIDC & DV"
  type        = "SANDBOX"
  license_id  = data.pingone_licenses.internal_license.ids[0]

  service {
    type = "SSO"
  }
  service {
    type = "Risk"
  }
  service {
    type = "MFA"
  }
  service {
    type = "DaVinci"
    tags = ["DAVINCI_MINIMAL"]
  }
}

# Grant Roles to Admin User
data "pingone_role" "environment_admin" {
  name = "Environment Admin"
}

data "pingone_role" "identity_data_admin" {
  name = "Identity Data Admin"
}

data "pingone_role" "client_application_developer" {
  name = "Client Application Developer"
}

resource "pingone_role_assignment_user" "id_admin" {
  environment_id = var.admin_env_id
  user_id        = var.admin_user_id
  role_id        = data.pingone_role.identity_data_admin.id

  scope_environment_id = pingone_environment.my_environment.id
}

resource "pingone_role_assignment_user" "app_dev" {
  environment_id = var.admin_env_id
  user_id        = var.admin_user_id
  role_id        = data.pingone_role.client_application_developer.id

  scope_environment_id = pingone_environment.my_environment.id
}

resource "pingone_population" "app" {
  environment_id = pingone_environment.my_environment.id

  name        = "Application Users"
  description = "Population containing App Users"
}

# Create Worker App that can be used in DV Connectors
resource "pingone_application" "dv_worker_app" {
  environment_id = pingone_environment.my_environment.id
  name           = "PingOne DaVinci Connection"
  enabled        = true

  oidc_options {
    type                        = "WORKER"
    grant_types                 = ["CLIENT_CREDENTIALS"]
    token_endpoint_authn_method = "CLIENT_SECRET_BASIC"
  }

  icon {
    id   = "c6dbb456-0857-4fab-bfb0-909944233017"
    href = "https://assets.pingone.com/ux/ui-library/4.18.0/images/logo-pingidentity.png"
  }
}

resource "pingone_application_role_assignment" "id_admin" {
  environment_id = pingone_environment.my_environment.id
  application_id = pingone_application.dv_worker_app.id
  role_id        = data.pingone_role.identity_data_admin.id

  scope_environment_id = pingone_environment.my_environment.id
}

resource "pingone_application_role_assignment" "env_admin" {
  environment_id = pingone_environment.my_environment.id
  application_id = pingone_application.dv_worker_app.id
  role_id        = data.pingone_role.environment_admin.id

  scope_environment_id = pingone_environment.my_environment.id
}

# Create OIDC Login App
resource "pingone_application" "app_logon" {
  environment_id = pingone_environment.my_environment.id
  enabled        = true
  name           = "OIDC Login App"

  oidc_options {
    type                        = "NATIVE_APP"
    grant_types                 = ["AUTHORIZATION_CODE", "IMPLICIT"]
    response_types              = ["CODE", "TOKEN", "ID_TOKEN"]
    token_endpoint_authn_method = "NONE"
    redirect_uris               = ["https://decoder.pingidentity.cloud/hybrid"]
  }
}

resource "pingone_application_resource_grant" "app_logon_resource_grants" {
  environment_id = pingone_environment.my_environment.id
  application_id = pingone_application.app_logon.id

  resource_name = "openid"

  scope_names = [
    "email",
    "profile",
  ]
}

resource "pingone_system_application" "pingone_portal" {
  environment_id = pingone_environment.my_environment.id

  type    = "PING_ONE_PORTAL"
  enabled = true
}

resource "pingone_system_application" "pingone_self_service" {
  environment_id = pingone_environment.my_environment.id

  type    = "PING_ONE_SELF_SERVICE"
  enabled = true

  apply_default_theme         = true
  enable_default_theme_footer = true
}

resource "pingone_application_flow_policy_assignment" "app_logon" {
  environment_id = pingone_environment.my_environment.id
  application_id = pingone_application.app_logon.id

  flow_policy_id = davinci_application_flow_policy.session_flow_policy.id

  priority = 1
}

resource "pingone_application_flow_policy_assignment" "my_account" {
  environment_id = pingone_environment.my_environment.id
  application_id = pingone_system_application.pingone_self_service.id

  flow_policy_id = davinci_application_flow_policy.session_flow_policy.id

  priority = 1
}

resource "pingone_application_flow_policy_assignment" "my_apps" {
  environment_id = pingone_environment.my_environment.id
  application_id = pingone_system_application.pingone_portal.id

  flow_policy_id = davinci_application_flow_policy.session_flow_policy.id

  priority = 1
}