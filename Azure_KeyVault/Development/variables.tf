variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
}

variable "AZURE_TENANT_ID" {
  type        = string
}

variable "AZURE_OBJECT_ID" {
  type        = string
}

variable "location" {
  type        = string
  default     = "west europe"
}

variable "azurerm_key_vault_name" {
  type        = string
}

variable "azurerm_key_vault_enabled_for_disk_encryption" {
  type        = bool
  default     = true
}

variable "azurerm_key_vault_sku" {
  type        = string
  default     = "standard"
}

variable "azurerm_key_vault_network_acls_default_action" {
  type        = string
  default     = "Allow"
}

variable "azurerm_key_vault_network_acls_bypass" {
  type        = string
  default     = "AzureServices"
}

variable "azurerm_key_vault_secret_name" {
  type        = string
  default     = "mongodb"
}

variable "azurerm_key_vault_secret_value" {
  type        = string
  default     = "secret"
}

