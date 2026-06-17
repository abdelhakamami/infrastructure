variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID"
}

variable "resource_group_name" {
  type = string
  default = "infrastructure"
}

variable "location" {
  type        = string
  default = "west europe"
}

variable "environment" {
  description = "The environment for the resource group"
  type        = string
  default     = "Development"
}
variable "client_id" {
  description = "azure client_id"
  type        = string

}
variable "tenant_id" {
  description = "azure tenant_id"
  type        = string

}
variable "client_secret" {
  description = "azure client_secret"
  type        = string

}
