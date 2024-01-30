# output "dv_app_policies" {
#     value = davinci_application.pingone_app.policy.*.policy_id[0]
# }

# output "flow_stepup" {
#     value = data.template_file.flow_stepup.graphData // local.flow_stepup.graphData.elements.nodes.6.data.properties
# }

output "my_account_link" {
  value = "https://apps.pingone.${local.pingone_domain}/${pingone_environment.my_environment.id}/myaccount"
}

output "my_apps_link" {
  value = "https://apps.pingone.${local.pingone_domain}/${pingone_environment.my_environment.id}/myapps"
}

output "Thing_I_Want_To_See" {
  value = pingone_notification_template_content.email
}