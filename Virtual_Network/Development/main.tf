resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.address_space]
  location            = var.location
  resource_group_name = var.vnet_rg_name
}
resource "azurerm_subnet" "subnetA" {
  name                 = var.azurerm_subnetA
  resource_group_name  = var.vnet_rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.azurerm_subnet_subnetA_address_prefixes]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}
resource "azurerm_subnet" "subnetB" {
  name                 = var.azurerm_subnetB
  resource_group_name  = var.vnet_rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.azurerm_subnet_subnetB_address_prefixes]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}


##
