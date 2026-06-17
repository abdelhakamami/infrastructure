variable "AZURE_SUBSCRIPTION_ID" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "environment" {
  type = string
  default = "production" 
}

variable "address_space" {
  type = string
  default = "10.0.0.0/16"
}

variable "location" {
  type = string
  default = "West Europe"
}

variable "azurerm_subnet_A" {
  type = string
  default = "SubnetA"
}

variable "azurerm_subnet_SubnetA_address_prefixes" {
  type = string
  default = "10.0.0.0/24"
}

variable "azurerm_subnet_B" {
  type = string
  default = "SubnetB"
}

variable "azurerm_subnet_SubnetB_address_prefixes" {
  type = string
  default = "10.0.1.0/24"
}

variable "azurerm_network_security_group_app_nsg_name" {
  type = string
  default = "network-nsg"
}

variable "azurerm_network_security_group_app_nsg_security_rule_name" {
  type = string
  default = "Allow_HTTP"
}

variable "azurerm_network_security_group_app_nsg_security_rule_priority" {
  type = number
  default = 200
}

variable "azurerm_network_security_group_app_nsg_security_rule_direction" {
  type = string
  default = "Inbound"
}

variable "azurerm_network_security_group_app_nsg_security_access" {
  type = string
  default = "Allow"
}

variable "azurerm_network_security_group_app_nsg_security_protocol" {
  type = string
  default = "Tcp"
}

variable "azurerm_network_security_group_app_nsg_security_source_port_range" {
  type = string
  default = "*"
}

variable "azurerm_network_security_group_app_nsg_security_destination_port_range" {
  type = string
  default = "80"
}

variable "azurerm_network_security_group_app_nsg_security_source_address_prefix" {
  type = string
  default = "*"
}

variable "azurerm_network_security_group_app_nsg_security_destination_address_prefix" {
  type = string
  default = "*"
}