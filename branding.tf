resource "pingone_image" "company_logo" {
  environment_id = pingone_environment.my_environment.id

  image_file_base64 = filebase64("~/downloads/HoneywellHome_Logo.png")
}

resource "pingone_branding_settings" "branding" {
  environment_id = pingone_environment.my_environment.id

  company_name = "Demo - Generic"

  logo_image {
    id   = pingone_image.company_logo.id
    href = pingone_image.company_logo.uploaded_image[0].href
  }
}

resource "pingone_branding_theme" "default_theme" {
  environment_id = pingone_environment.my_environment.id

  name     = "Default Theme"
  template = "default"

  logo {
    id   = pingone_image.company_logo.id
    href = pingone_image.company_logo.uploaded_image[0].href
  }

  background_color = "#EDEDED"

  # background_image {
  #   id   = pingone_image.theme_background.id
  #   href = pingone_image.theme_background.uploaded_image[0].href
  # }

  button_text_color  = "#FFFFFF"
  heading_text_color = "#686F77"
  card_color         = "#FCFCFC"
  body_text_color    = "#263956"
  link_text_color    = "#263956"
  button_color       = "#263956"
}

resource "pingone_branding_theme_default" "default_theme_active" {
  environment_id = pingone_environment.my_environment.id

  branding_theme_id = pingone_branding_theme.default_theme.id
}