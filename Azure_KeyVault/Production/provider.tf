provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "" # to be defined for prod environement
    storage_account_name = "" # to be defined for prod environement
    container_name       = "" # to be defined for prod environement
    key                  = "" # to be defined for prod environement  # Update this for every state for example new creation of a new container 
  }
}