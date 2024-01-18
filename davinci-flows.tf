resource "davinci_flow" "initial_flow" {
  flow_json = file("./davinci/PingOne_Session Main Flow.json")
  deploy    = true
  // NOTICE: this is NOT resource.pingone_environment. Dependency is on the role assignment, not environment.
  environment_id = pingone_environment.my_environment.id

  subflow_link {
    id   = resource.davinci_flow.sub_login_flow.id
    name = resource.davinci_flow.sub_login_flow.name
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
    id   = davinci_connection.pingone_authentication.id
    name = davinci_connection.pingone_authentication.name
  }

  connection_link {
    id   = davinci_connection.teleport_connector.id
    name = davinci_connection.teleport_connector.name
  }

  // This depends_on relieves the client from multiple initial authentication attempts
  depends_on = [
    data.davinci_connections.read_all
  ]
}

data "template_file" "flow_login" {
    template = file("./davinci/[Sub]_Login with External Lookup.tpl")

    vars = {
        form_login = pingone_form.login.id
    }
}

resource "davinci_flow" "sub_login_flow" {
  flow_json = data.template_file.flow_login.rendered
  deploy    = true
  // NOTICE: this is NOT resource.pingone_environment. Dependency is on the role assignment, not environment.
  environment_id = pingone_environment.my_environment.id

  subflow_link {
    id   = resource.davinci_flow.sub_stepup_flow.id
    name = resource.davinci_flow.sub_stepup_flow.name
  }

  subflow_link {
    id   = resource.davinci_flow.sub_registration_flow.id
    name = resource.davinci_flow.sub_registration_flow.name
  }

  connection_link {
    id   = davinci_connection.error_connector.id
    name = davinci_connection.error_connector.name
  }

  connection_link {
    id   = davinci_connection.functions_connector.id
    name = davinci_connection.functions_connector.name
  }

  connection_link {
    id   = davinci_connection.http_connector.id
    name = davinci_connection.http_connector.name
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
    id   = davinci_connection.teleport_connector.id
    name = davinci_connection.teleport_connector.name
  }

  connection_link {
    id   = davinci_connection.flow_connector.id
    name = davinci_connection.flow_connector.name
  }

  connection_link {
    id   = davinci_connection.annotation.id
    name = davinci_connection.annotation.name
  }

  // This depends_on relieves the client from multiple initial authentication attempts
  depends_on = [
    data.davinci_connections.read_all
  ]
}

data "template_file" "flow_stepup" {
    template = file("./davinci/[Sub]_Step-Up.tpl")

    vars = {
        form_id = pingone_form.otp_entry.id
    }
}

resource "davinci_flow" "sub_stepup_flow" {
  flow_json = data.template_file.flow_stepup.rendered
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
    id   = davinci_connection.http_connector.id
    name = davinci_connection.http_connector.name
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
    id   = davinci_connection.annotation.id
    name = davinci_connection.annotation.name
  }

  // This depends_on relieves the client from multiple initial authentication attempts
  depends_on = [
    data.davinci_connections.read_all
  ]
}

data "template_file" "flow_registration" {
    template = file("./davinci/[Sub]_Registration.tpl")

    vars = {
        form_register_passkey = pingone_form.register_passkey.id
        form_register_password = pingone_form.password.id
    }
}

resource "davinci_flow" "sub_registration_flow" {
  flow_json = data.template_file.flow_registration.rendered
  deploy    = true
  // NOTICE: this is NOT resource.pingone_environment. Dependency is on the role assignment, not environment.
  environment_id = pingone_environment.my_environment.id

  subflow_link {
    id   = resource.davinci_flow.sub_passkey_enroll_flow.id
    name = resource.davinci_flow.sub_passkey_enroll_flow.name
  }

  connection_link {
    id   = davinci_connection.annotation.id
    name = davinci_connection.annotation.name
  }

  connection_link {
    id   = davinci_connection.functions_connector.id
    name = davinci_connection.functions_connector.name
  }

  connection_link {
    id   = davinci_connection.http_connector.id
    name = davinci_connection.http_connector.name
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
    id   = davinci_connection.annotation.id
    name = davinci_connection.annotation.name
  }

  connection_link {
    id   = davinci_connection.pingone_connector.id
    name = davinci_connection.pingone_connector.name
  }

  connection_link {
    id   = davinci_connection.teleport_connector.id
    name = davinci_connection.teleport_connector.name
  }

  connection_link {
    id   = davinci_connection.flow_connector.id
    name = davinci_connection.flow_connector.name
  }

  connection_link {
    id   = davinci_connection.pingone_protect_connector.id
    name = davinci_connection.pingone_protect_connector.name
  }

  // This depends_on relieves the client from multiple initial authentication attempts
  depends_on = [
    data.davinci_connections.read_all
  ]
}

resource "davinci_flow" "sub_passkey_enroll_flow" {
  flow_json = file("./davinci/[Sub]_Passkey - Enrollment.json")
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
    id   = davinci_connection.http_connector.id
    name = davinci_connection.http_connector.name
  }

  connection_link {
    id   = davinci_connection.pingone_mfa_connector.id
    name = davinci_connection.pingone_mfa_connector.name
  }

  connection_link {
    id   = davinci_connection.annotation.id
    name = davinci_connection.annotation.name
  }

  connection_link {
    id   = davinci_connection.flow_analytics.id
    name = davinci_connection.flow_analytics.name
  }

  // This depends_on relieves the client from multiple initial authentication attempts
  depends_on = [
    data.davinci_connections.read_all
  ]
}