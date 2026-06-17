resource "azurerm_resource_group" "infrastructure" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = var.environment  # Reference the variable here
  }
}
output "resource_group_name" {
  value = azurerm_resource_group.infrastructure.name
}

# Create a storage account for storing the state of the resource
resource "azurerm_storage_account" "sa" {
  name                     = "mystorageaccount${random_string.storage_suffix.result}"
  resource_group_name       = azurerm_resource_group.infrastructure.name
  location                  = azurerm_resource_group.infrastructure.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
}

resource "random_string" "storage_suffix" {
  length  = 9
  upper   = false
  special = false
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
