variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID"
}

variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
  default = "east us"
}

variable "azurerm_kubernetes_cluster_name" {
  type        = string
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "avaxia-test"
}

variable "azurerm_kubernetes_cluster_default_node_pool_name" {
  type        = string
  default = "default"
}

variable "azurerm_kubernetes_cluster_default_node_pool_node_count" {
  type        = number
  default =  1
}

variable "azurerm_kubernetes_cluster_default_node_pool_vm_size" {
  type        = string
  default = "Standard_DS2_v2"
}

variable "azurerm_kubernetes_cluster_default_node_pool_identiry" {
  type        = string
  default = "SystemAssigned"
}

variable "azurerm_kubernetes_cluster_kubernetes_version" {
  type        = string
  default     = "1.29.8"
}