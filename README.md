# Exploration into packaging PingOne-based use cases

This repo is a replacement for One-Facile using Terraform and adding newer PingOne Services.

## Services and Components

* PingOne SSO
  * Users
  * Applications
  * Branding
  * Forms
* PingOne Protect
* PingOne MFA
  * Passkeys
  * Email OTP
* PingOne DaVinci
  * Session Detection
  * PingOne Forms \ Branding
  * Passkey Detection
  * Threat Detection

## Terraform Variables

You need to define the following in a `terraform.tfvars` file:

```hcl
region                 = {{ "NorthAmerica" | "Canada" | "Europe" | "Asia" }}
organization_id        = {{ Your PingOne OrgID }}
license_name           = {{ Name of the license to apply }}
admin_env_id           = {{ Administrator EnvID }}
admin_user_id          = {{ Administrator User ID (for Role Assignment) }}
dv_admin_user_name     = {{ DV Admin Username (with DV Admin Role) }}
dv_admin_user_password = {{ DV Admin password }}
worker_id              = {{ Worker App ID (in Admin Env) }}
worker_secret          = {{ Worker App Secret }}
env_name               = {{ Environment Name to be created }}
company_name           = {{ Company Name for this demo }}
logo_filename          = {{ Location of the logo for the demo }}
```
