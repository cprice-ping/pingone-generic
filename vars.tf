variable "region" {
  type        = string
  description = "Region your P1 Org is in"
  default     = "NorthAmerica"
}

variable "license_id" {
  type        = string
  description = "License ID to put onto new Environments"
  default     = ""
}

variable "env_id" {
  type        = string
  description = "P1 Environment containing the Worker App"
  default     = ""
}

variable "worker_id" {
  type        = string
  description = "Worker App ID App - App must have sufficient Roles"
  default     = ""
}

variable "worker_secret" {
  type        = string
  description = "Worker App Secret - App must have sufficient Roles"
  default     = ""
}

variable "app_client_name" {
  type        = string
  description = "Client App Name"
  default     = "Migration App"
}

variable "app_redirect_uris" {
  type        = list(string)
  description = "Client App RedirectURIs"
  default     = ["https://decoder.pingidentity.cloud/oidc"]
}

variable "deploy_name" {
  type        = string
  description = "Name used for the deployment"
  default     = ""
}
