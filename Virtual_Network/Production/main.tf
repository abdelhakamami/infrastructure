data "terraform_remote_state" "resource_group_state" {
  backend = "azurerm"
  config = {
    resource_group_name  = "" # still not created 
    storage_account_name = "" # still not created 
    container_name       = "" # still not created 
    key                  = "" # still not created 
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.address_space]
  location            = var.location
  resource_group_name = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
}
resource "azurerm_subnet" "SubnetA" {
  name                 = var.azurerm_subnet_A
  resource_group_name  = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.azurerm_subnet_SubnetA_address_prefixes]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}
resource "azurerm_subnet" "SubnetB" {
  name                 = var.azurerm_subnet_B
  resource_group_name  = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.azurerm_subnet_SubnetB_address_prefixes]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}
resource "azurerm_network_security_group" "app_nsg" {
  name                = var.azurerm_network_security_group_app_nsg_name
  location            = var.location
  resource_group_name = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  security_rule {
    name                       = var.azurerm_network_security_group_app_nsg_security_rule_name
    priority                   = var.azurerm_network_security_group_app_nsg_security_rule_priority
    direction                  = var.azurerm_network_security_group_app_nsg_security_rule_direction
    access                     = var.azurerm_network_security_group_app_nsg_security_access
    protocol                   = var.azurerm_network_security_group_app_nsg_security_protocol
    source_port_range          = var.azurerm_network_security_group_app_nsg_security_source_port_range
    destination_port_range     = var.azurerm_network_security_group_app_nsg_security_destination_port_range
    source_address_prefix      = var.azurerm_network_security_group_app_nsg_security_source_address_prefix
    destination_address_prefix = var.azurerm_network_security_group_app_nsg_security_destination_address_prefix
  }
}

##