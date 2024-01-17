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

// This simple read action is used to as a precursor to all other data/resources
// Every other data/resource should have a `depends_on` pointing to this read action
data "davinci_connections" "read_all" {
  // NOTICE: This read action has a dependency on the role assignment, not environment.
  // Assigning this correctly ensures the role is not destroyed before DaVinci resources during `terraform destroy`.
  depends_on = [
    pingone_role_assignment_user.davinci_admin_sso,
  ]
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "error_connector" {
  name           = "Error Message"
  connector_id   = "errorConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "functions_connector" {
  name           = "Functions"
  connector_id   = "functionsConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "https_connector" {
  name           = "HTTP"
  connector_id   = "httpConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "flow_connector" {
  name           = "Flow Conductor"
  connector_id   = "flowConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "annotation" {
  name           = "Annotation"
  connector_id   = "annotationConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "flow_analytics" {
  name           = "Flow Analytics"
  connector_id   = "analyticsConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "pingone_connector" {
  name           = "PingOne"
  connector_id   = "pingOneSSOConnector"
  environment_id = pingone_environment.my_environment.id

  property {
    name = "clientId"
    value = pingone_application.dv_worker_app.id
  }
  
  property {
    name = "clientSecret"
    value = pingone_application.dv_worker_app.oidc_options[0].client_secret
  }

  property {
    name = "envId"
    value = pingone_environment.my_environment.id
  }

  property {
    name = "region"
    value = local.pingone_short
  }
}

resource "davinci_connection" "pingone_mfa_connector" {
  name           = "PingOne MFA"
  connector_id   = "pingOneMfaConnector"
  environment_id = pingone_environment.my_environment.id

  property {
    name = "clientId"
    value = pingone_application.dv_worker_app.id
  }
  
  property {
    name = "clientSecret"
    value = pingone_application.dv_worker_app.oidc_options[0].client_secret
  }

  property {
    name = "envId"
    value = pingone_environment.my_environment.id
  }

  property {
    name = "region"
    value = local.pingone_short
  }
}

resource "davinci_connection" "pingone_protect_connector" {
  name           = "PingOne Protect"
  connector_id   = "pingOneRiskConnector"
  environment_id = pingone_environment.my_environment.id

  property {
    name = "clientId"
    value = pingone_application.dv_worker_app.id
  }
  
  property {
    name = "clientSecret"
    value = pingone_application.dv_worker_app.oidc_options[0].client_secret
  }

  property {
    name = "envId"
    value = pingone_environment.my_environment.id
  }

  property {
    name = "region"
    value = local.pingone_short
  }
}

resource "davinci_connection" "pingone_forms" {
  name           = "PingOne Forms"
  connector_id   = "pingOneFormsConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "pingone_authentication" {
  name           = "PingOne Authentication"
  connector_id   = "pingOneAuthenticationConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_flow" "initial_flow" {
  flow_json = file("./davinci/PingOne_Session Main_Flow.json")
  deploy    = true
  // NOTICE: this is NOT resource.pingone_environment. Dependency is on the role assignment, not environment.
  environment_id = pingone_environment.my_environment.id

  connection_link {
    id   = davinci_connection.error_connector.id
    name = davinci_connection.error_connector.name
  }

  connection_link {
    id   = davinci_connection.functions_connector.id
    name = davinci_connection.functions_connector.name
  }

  connection_link {
    id   = davinci_connection.https_connector.id
    name = davinci_connection.https_connector.name
  }

  connection_link {
    id   = davinci_connection.flow_connector.id
    name = davinci_connection.flow_connector.name
  }

  connection_link {
    id   = davinci_connection.annotation.id
    name = davinci_connection.annotation.name
  }

  connection_link {
    id   = davinci_connection.flow_analytics.id
    name = davinci_connection.flow_analytics.name
  }

  connection_link {
    id   = davinci_connection.pingone_connector.id
    name = davinci_connection.pingone_connector.name
  }

  connection_link {
    id   = davinci_connection.pingone_forms.id
    name = davinci_connection.pingone_forms.name
  }

  connection_link {
    id   = davinci_connection.pingone_mfa_connector.id
    name = davinci_connection.pingone_mfa_connector.name
  }

  connection_link {
    id   = davinci_connection.pingone_protect_connector.id
    name = davinci_connection.pingone_protect_connector.name
  }

  connection_link {
    id   = davinci_connection.pingone_authentication.id
    name = davinci_connection.pingone_authentication.name
  }

  // This depends_on relieves the client from multiple initial authentication attempts
  depends_on = [
    data.davinci_connections.read_all
  ]
}