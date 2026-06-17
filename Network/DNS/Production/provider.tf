provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "" # still not creted 
    storage_account_name = "" # still not creted 
    container_name       = "" # still not creted 
    key                  = "" # still not creted   # Update this for every state for example new creation of a new container 
  }
}