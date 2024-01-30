data "template_file" "flow_login" {
  template = file("./davinci/[Sub]_Login with External Lookup.tpl")

  vars = {
    form_login = pingone_form.login.id
  }
}

data "template_file" "flow_stepup" {
  template = file("./davinci/[Sub]_Step-Up.tpl")

  vars = {
    form_id             = pingone_form.otp_entry.id
  }
}

data "template_file" "flow_registration" {
  template = file("./davinci/[Sub]_Registration.tpl")

  vars = {
    form_register_passkey  = pingone_form.register_passkey.id
    form_register_password = pingone_form.password.id
    population = pingone_population.app.id
  }
}