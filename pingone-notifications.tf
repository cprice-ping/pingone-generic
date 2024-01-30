resource "pingone_notification_template_content" "email" {
  environment_id = pingone_environment.my_environment.id
  template_name  = "strong_authentication"
  locale         = "en"
  # variant        = "${var.company_name} - Default"

  email {
    body    = "Your ${var.company_name} passcode is $${otp}."
    subject = "${var.company_name} - Authentication Request"
  }
}

resource "pingone_notification_template_content" "sms" {
  environment_id = pingone_environment.my_environment.id
  template_name  = "strong_authentication"
  locale         = "en"
  # variant        = "${var.company_name} - Default"

  sms {
    content = "${var.company_name} passcode - $${otp}."
  }
}