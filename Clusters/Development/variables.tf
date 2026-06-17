variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID"
}

variable "location" {
  type        = string
}

variable "azurerm_kubernetes_cluster_name" {
  type        = string
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
variable "vnet_tf_state_rg_name" {
  type        = string
}
variable "vnet_tf_state_storage_account_name" {
  type        = string
}
variable "vnet_tf_state_container_name" {
  type        = string
}
variable "vnet_tf_state_key" {
  type        = string
}
variable "aks_storage_account_rg_name" {
  type        = string
}
variable "aks_storage_account_name" {
  type        = string
}
variable "aks_storage_account_container_name" {
  type        = string
}
variable "aks_storage_account_key" {
  type        = string
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
}

variable "azurerm_kubernetes_cluster_default_node_pool_name" {
  type        = string
}

variable "azurerm_kubernetes_cluster_default_node_pool_node_count" {
  type        = number
}

variable "azurerm_kubernetes_cluster_default_node_pool_vm_size" {
  type        = string
}
variable "azurerm_kubernetes_cluster_default_max_pods" {
  type        = string
}

variable "azurerm_kubernetes_cluster_default_node_pool_identiry" {
  type        = string
  default = "SystemAssigned"
}

variable "azurerm_kubernetes_cluster_kubernetes_version" {
  type        = string
}
variable "node_pool1_name" {
  type        = string
}
variable "node_pool1_count" {
  type        = string
}
variable "node_pool1_max_pods" {
  type        = string
}
variable "node_pool2_name" {
  type        = string
}
variable "node_pool2_count" {
  type        = string
}
variable "node_pool2_max_pods" {
  type        = string
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
