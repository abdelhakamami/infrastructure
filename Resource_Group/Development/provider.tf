provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "Avaxia-Production"
    storage_account_name = "resourcegrouptf"
    container_name       = "production"
    key                  = "prod_infrastructure_aks.tfstate"
  }
}
