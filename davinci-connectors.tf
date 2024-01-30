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

resource "davinci_connection" "http_connector" {
  name           = "Http"
  connector_id   = "httpConnector"
  environment_id = pingone_environment.my_environment.id
}

resource "davinci_connection" "flow_connector" {
  name           = "Flow Connector"
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
    name  = "clientId"
    value = pingone_application.dv_worker_app.id
  }

  property {
    name  = "clientSecret"
    value = pingone_application.dv_worker_app.oidc_options[0].client_secret
  }

  property {
    name  = "envId"
    value = pingone_environment.my_environment.id
  }

  property {
    name  = "region"
    value = local.pingone_short
  }
}

resource "davinci_connection" "pingone_mfa_connector" {
  name           = "PingOne MFA"
  connector_id   = "pingOneMfaConnector"
  environment_id = pingone_environment.my_environment.id

  property {
    name  = "clientId"
    value = pingone_application.dv_worker_app.id
  }

  property {
    name  = "clientSecret"
    value = pingone_application.dv_worker_app.oidc_options[0].client_secret
  }

  property {
    name  = "envId"
    value = pingone_environment.my_environment.id
  }

  property {
    name  = "region"
    value = local.pingone_short
  }
}

resource "davinci_connection" "pingone_protect_connector" {
  name           = "PingOne Protect"
  connector_id   = "pingOneRiskConnector"
  environment_id = pingone_environment.my_environment.id

  property {
    name  = "clientId"
    value = pingone_application.dv_worker_app.id
  }

  property {
    name  = "clientSecret"
    value = pingone_application.dv_worker_app.oidc_options[0].client_secret
  }

  property {
    name  = "envId"
    value = pingone_environment.my_environment.id
  }

  property {
    name  = "region"
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

resource "davinci_connection" "teleport_connector" {
  name           = "Node"
  connector_id   = "nodeConnector"
  environment_id = pingone_environment.my_environment.id
}