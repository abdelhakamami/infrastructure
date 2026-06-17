provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "storing-state-storageaccount"
    storage_account_name = "devstoringavaxia"
    container_name       = "tfstate-lb-dev"
    key                  = "new-tfstate-lb-dev"  # Update this for every state for example new creation of a new container 
  }
}
#