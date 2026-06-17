data "azurerm_storage_account" "existing_sa" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
}
# Create a storage account for storing the state of the resource
resource "azurerm_storage_account" "sa" {
  count                     = var.create_storage_account ? 1 : 0
  name                      = var.storage_account_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
}

resource "azurerm_storage_container" "tfstate" {
  name                  = var.azurerm_storage_container_tfsate_name
  storage_account_name  = data.azurerm_storage_account.existing_sa.name
  container_access_type = var.azurerm_storage_container_tfstate_container_access_type
}
##