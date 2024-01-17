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