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
  default     = "Staging"  # Optional: Provide a default value if desired
}