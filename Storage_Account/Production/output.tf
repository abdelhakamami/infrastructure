output "id" {
  value = var.create_storage_account ? azurerm_storage_account.sa[0].id : data.azurerm_storage_account.existing_sa.id
}

output "name" {
  value = var.create_storage_account ? azurerm_storage_account.sa[0].name : data.azurerm_storage_account.existing_sa.name
}
