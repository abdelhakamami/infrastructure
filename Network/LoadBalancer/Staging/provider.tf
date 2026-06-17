provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "" # will be configured in the staging env
    storage_account_name = "" # will be configured in the staging env
    container_name       = "" # will be configured in the staging env
    key                  = "" # will be configured in the staging env # Update this for every state for example new creation of a new container 
  }
}