provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "" # will be configured in the production env
    storage_account_name = "" # will be configured in the production env
    container_name       = "" # will be configured in the production env
    key                  = "" # will be configured in the production env  # Update this for every state for example new creation of a new container 
  }
}