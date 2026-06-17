data "terraform_remote_state" "resource_group_state" {
  backend = "azurerm"
  config = {
    resource_group_name  = var.rg_tf_state_rg_name
    storage_account_name = var.rg_tf_state_storage_account_name
    container_name       = var.rg_tf_state_container_name
    key                  = var.rg_tf_state_key 
  }
}
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.address_space]
  location            = var.location
  resource_group_name = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
}
resource "azurerm_subnet" "subnetA" {
  name                 = var.azurerm_subnetA
  resource_group_name  = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.azurerm_subnet_subnetA_address_prefixes]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}
resource "azurerm_subnet" "subnetB" {
  name                 = var.azurerm_subnetB
  resource_group_name  = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.azurerm_subnet_subnetB_address_prefixes]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}


##
