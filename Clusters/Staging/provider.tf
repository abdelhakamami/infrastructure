provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = var.aks_storage_account_rg_name
    storage_account_name = var.aks_storage_account_name
    container_name       = var.aks_storage_account_container_name
    key                  = var.aks_storage_account_key
  }
}
