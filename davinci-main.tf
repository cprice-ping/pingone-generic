provider "davinci" {
  //Must be Identity Data Admin for Environment 
  username = var.dv_admin_user_name
  password = var.dv_admin_user_password
  region   = var.region
  // User should exist in Identities of this environment
  environment_id = var.admin_env_id
}

// Get the roles from the organization
data "pingone_role" "davinci_admin" {
  name = "DaVinci Admin"
}

// Get the ID of the DV admin user
data "pingone_user" "dv_admin_user" {
  environment_id = var.admin_env_id
  username       = var.dv_admin_user_name
}

// Assign the "DaVinci" role to the DV admin user
resource "pingone_role_assignment_user" "davinci_admin_sso" {
  environment_id       = var.admin_env_id
  user_id              = data.pingone_user.dv_admin_user.id
  role_id              = data.pingone_role.davinci_admin.id
  scope_environment_id = pingone_environment.my_environment.id
}

resource "davinci_application" "pingone_app" {
  name           = "PingOne Connection"
  environment_id = pingone_environment.my_environment.id
  oauth {
    enabled = true
    values {
      allowed_grants                = ["authorizationCode"]
      allowed_scopes                = ["openid", "profile"]
      enabled                       = true
      enforce_signed_request_openid = false
      redirect_uris                 = ["https://auth.pingone.com/0000-0000-0000/rp/callback/openid_connect"]
    }
  }
  saml {
    values {
      enabled                = false
      enforce_signed_request = false
    }
  }
}

resource "davinci_application_flow_policy" "session_flow_policy" {
  environment_id = pingone_environment.my_environment.id
  application_id = davinci_application.pingone_app.id
  name           = "PingOne - Session Login"
  status         = "enabled"
  policy_flow {
    flow_id    = resource.davinci_flow.initial_flow.id
    version_id = -1
    weight     = 100
  }
}