provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "storing-state-storageaccount"
    storage_account_name = "devstoringavaxia"
    container_name       = "" # needs to be created
    key                  = "" # need to be defined
  }
}