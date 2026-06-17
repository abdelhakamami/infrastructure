variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
}

variable "azurerm_public_ip_name" {
  type        = string

  default = "PublicIPForLB-dev"
}

variable "location" {
  type        = string
  default = "west europe"
}

variable "azurerm_public_ip_allocation_method" {
  type        = string
  default = "Static"
}

variable "azurerm_lb_name" {
  type        = string
  default = "TestLoadBalancer"
}

variable "azurerm_lb_frontend_ip_configuration_name" {
  type        = string
  default = "PublicIPAddress-dev"
}