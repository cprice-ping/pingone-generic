resource "pingone_form" "otp_entry" {
  category = "CUSTOM"
  cols     = 4
  components = {
    fields = [
      {
        alignment             = null
        attribute_disabled    = null
        content               = "[{\"children\":[{\"text\":\"Enter your code\"}],\"type\":\"heading-1\"},{\"children\":[{\"text\":\"Check your email for a one time passcode\"}]},{\"type\":\"divider\",\"children\":[{\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"}]}]"
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 1
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "SLATE_TEXTBLOB"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = false
        content               = null
        key                   = "otp"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"Enter the One Time Passcode\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 2
          width = null
        }
        qr_code_type               = null
        required                   = true
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "TEXT"
        validation = {
          error_message = null
          regex         = null
          type          = "NONE"
        }
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"button.text\",\"defaultTranslation\":\"Submit\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 3
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "SUBMIT_BUTTON"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 0
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "ERROR_DISPLAY"
        validation                 = null
      },
    ]
  }
  description        = null
  environment_id     = pingone_environment.my_environment.id
  mark_optional      = true
  mark_required      = false
  name               = "OTP Entry"
  translation_method = "TRANSLATE"
}

resource "pingone_form" "password" {
  category = "CUSTOM"
  cols     = 4
  components = {
    fields = [
      {
        alignment             = null
        attribute_disabled    = false
        content               = null
        key                   = "user.email"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"fields.user.email.label\",\"defaultTranslation\":\"Email Address\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 2
          width = null
        }
        qr_code_type               = null
        required                   = true
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "TEXT"
        validation = {
          error_message = null
          regex         = null
          type          = "NONE"
        }
      },
      {
        alignment             = null
        attribute_disabled    = false
        content               = null
        key                   = "user.password"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"fields.user.password.label\",\"defaultTranslation\":\"Password\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"fields.user.password.labelPasswordVerify\",\"defaultTranslation\":\"Verify Password\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 3
          width = null
        }
        qr_code_type               = null
        required                   = true
        show_border                = null
        show_password_requirements = true
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "PASSWORD_VERIFY"
        validation = {
          error_message = null
          regex         = null
          type          = "NONE"
        }
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = "[{\"children\":[{\"text\":\"Create Your Profile\"}],\"type\":\"heading-1\"},{\"children\":[{\"text\":\"Enter the required information below\"}]},{\"type\":\"divider\",\"children\":[{\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"}]}]"
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 0
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "SLATE_TEXTBLOB"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"button.text\",\"defaultTranslation\":\"Submit\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 4
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "SUBMIT_BUTTON"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 1
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "ERROR_DISPLAY"
        validation                 = null
      },
    ]
  }
  description        = null
  environment_id     = pingone_environment.my_environment.id
  mark_optional      = true
  mark_required      = false
  name               = "Register (Password)"
  translation_method = "TRANSLATE"
}

resource "pingone_form" "register_passkey" {
  category = "CUSTOM"
  cols     = 4
  components = {
    fields = [
      {
        alignment             = null
        attribute_disabled    = false
        content               = null
        key                   = "user.email"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"fields.user.email.label\",\"defaultTranslation\":\"Email Address\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 2
          width = null
        }
        qr_code_type               = null
        required                   = true
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "TEXT"
        validation = {
          error_message = null
          regex         = null
          type          = "NONE"
        }
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = "[{\"children\":[{\"text\":\"Create Your Profile\"}],\"type\":\"heading-1\"},{\"children\":[{\"text\":\"Enter the required information below\"}]},{\"type\":\"divider\",\"children\":[{\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"}]}]"
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 0
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "SLATE_TEXTBLOB"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"button.text\",\"defaultTranslation\":\"Register Passkey\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 3
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "SUBMIT_BUTTON"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 1
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "ERROR_DISPLAY"
        validation                 = null
      },
    ]
  }
  description        = null
  environment_id     = pingone_environment.my_environment.id
  mark_optional      = true
  mark_required      = false
  name               = "Register (Passkey)"
  translation_method = "TRANSLATE"
}

resource "pingone_form" "login" {
  category = "CUSTOM"
  cols     = 4
  components = {
    fields = [
      {
        alignment             = null
        attribute_disabled    = false
        content               = null
        key                   = "user.password"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"fields.user.password.label\",\"defaultTranslation\":\"Password\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 3
          width = null
        }
        qr_code_type               = null
        required                   = true
        show_border                = null
        show_password_requirements = false
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "PASSWORD"
        validation = {
          error_message = null
          regex         = null
          type          = "NONE"
        }
      },
      {
        alignment             = null
        attribute_disabled    = false
        content               = null
        key                   = "user.username"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"fields.user.username.label\",\"defaultTranslation\":\"Enter your email address\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 2
          width = null
        }
        qr_code_type               = null
        required                   = true
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "TEXT"
        validation = {
          error_message = null
          regex         = null
          type          = "NONE"
        }
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = "[{\"children\":[{\"text\":\"Sign On\"}],\"type\":\"heading-1\"},{\"type\":\"divider\",\"children\":[{\"text\":\"\"}]},{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"}]}]"
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 0
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "SLATE_TEXTBLOB"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = "issues"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"Issues signing on?\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 7
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "FLOW_LINK"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = "passkey"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"Use your Passkey\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 1
          row   = 5
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles = {
          alignment        = "CENTER"
          background_color = "#FFF"
          border_color     = "#4462ED"
          enabled          = true
          height           = 36
          padding = {
            bottom = 5
            left   = 0
            right  = 0
            top    = 5
          }
          text_color = "#4462ED"
          width      = 100
          width_unit = "PERCENT"
        }
        theme      = null
        type       = "FLOW_BUTTON"
        validation = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = "register"
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"Create your account\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 1
          row   = 7
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "FLOW_LINK"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = "[{\"type\":\"paragraph\",\"children\":[{\"text\":\"\"},{\"type\":\"i18n\",\"key\":\"button.text.signOn\",\"defaultTranslation\":\"Sign On\",\"inline\":true,\"children\":[{\"text\":\"\"}]},{\"text\":\"\"}]}]"
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 5
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "SUBMIT_BUTTON"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 1
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "ERROR_DISPLAY"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 4
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "DIVIDER"
        validation                 = null
      },
      {
        alignment             = null
        attribute_disabled    = null
        content               = null
        key                   = null
        label                 = null
        label_mode            = null
        label_password_verify = null
        layout                = null
        options               = null
        position = {
          col   = 0
          row   = 6
          width = null
        }
        qr_code_type               = null
        required                   = null
        show_border                = null
        show_password_requirements = null
        size                       = null
        styles                     = null
        theme                      = null
        type                       = "DIVIDER"
        validation                 = null
      },
    ]
  }
  description        = null
  environment_id     = pingone_environment.my_environment.id
  mark_optional      = true
  mark_required      = false
  name               = "Login"
  translation_method = "TRANSLATE"
}
