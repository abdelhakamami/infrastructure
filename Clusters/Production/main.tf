resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.azurerm_kubernetes_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.prefix
  kubernetes_version  = var.azurerm_kubernetes_cluster_kubernetes_version

  default_node_pool {
    name       = var.azurerm_kubernetes_cluster_default_node_pool_name
    node_count = var.azurerm_kubernetes_cluster_default_node_pool_node_count
    vm_size    = var.azurerm_kubernetes_cluster_default_node_pool_vm_size
  }

  identity {
    type = var.azurerm_kubernetes_cluster_default_node_pool_identiry
  }
}