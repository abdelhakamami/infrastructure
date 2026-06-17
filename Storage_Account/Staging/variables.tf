variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID"
}
variable "storage_account_name" {
  type = string
  default = "devstoringavaxia"
}
variable "resource_group_name" {
  type = string
  default = "storing-state-storageaccount"
}
variable "location" {
  type = string
  default = "west europe"
}
variable "account_tier" {
  type = string
  default = "Standard"
}
variable "account_replication_type" {
  type = string
  default = "LRS"
}
variable "azurerm_storage_container_tfsate_name" {
  type = string
  default = "tfstate-virtual-network-dev" # change this for every new container state
}
variable "azurerm_storage_container_tfstate_container_access_type" {
  type = string
  default = "private"
}
variable "create_storage_account" {
  type        = bool
  description = "Set to true to create a new storage account, false to use an existing one."
  default     = false
}