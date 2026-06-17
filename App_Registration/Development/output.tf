# Output Application ID and Service Principal ID


output "service_principal_id" {
  value = azuread_service_principal.sp-appregistration.id
}

output "client_secret" {
  value     = azuread_application_password.client-secret-appregistration.value
  sensitive = true
}
