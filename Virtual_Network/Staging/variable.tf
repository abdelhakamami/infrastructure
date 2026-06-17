variable "AZURE_SUBSCRIPTION_ID" {
  type = string
}
variable "vnet_storage_account_rg_name" {
  type        = string
}
variable "vnet_storage_account_name" {
  type        = string
}
variable "vnet_storage_account_container_name" {
  type        = string
}
variable "vnet_storage_account_key" {
  type        = string
}
variable "environment" {
  type = string
  default = "Staging" 
}
variable "rg_tf_state_rg_name" {
  type        = string
}
variable "rg_tf_state_storage_account_name" {
  type        = string
}
variable "rg_tf_state_container_name" {
  type        = string
}
variable "rg_tf_state_key" {
  type        = string
}
variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = string
}

variable "location" {
  type = string
}

variable "azurerm_subnetA" {
  type = string
}

variable "azurerm_subnet_subnetA_address_prefixes" {
  type = string
}

variable "azurerm_subnetB" {
  type = string
}

variable "azurerm_subnet_subnetB_address_prefixes" {
  type = string
}


variable "client_id" {
  description = "azure client_id"

}
variable "tenant_id" {
  description = "azure tenant_id"

}
variable "client_secret" {
  description = "azure client_secret"
  type        = string

}
