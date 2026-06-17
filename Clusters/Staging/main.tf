data "terraform_remote_state" "resource_group_state" {
  backend = "azurerm"
  config = {
    resource_group_name  = var.rg_tf_state_rg_name
    storage_account_name = var.rg_tf_state_storage_account_name
    container_name       = var.rg_tf_state_container_name
    key                  = var.rg_tf_state_key 
  }
}
data "terraform_remote_state" "vnet_state" {
  backend = "azurerm"
  config = {
    resource_group_name  = var.vnet_tf_state_rg_name
    storage_account_name = var.vnet_tf_state_storage_account_name
    container_name       = var.vnet_tf_state_container_name
    key                  = var.vnet_tf_state_key 
  }
}



resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.azurerm_kubernetes_cluster_name
  location            = var.location
  resource_group_name = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  dns_prefix          = var.prefix
  kubernetes_version  = var.azurerm_kubernetes_cluster_kubernetes_version

  default_node_pool {
    name           = var.azurerm_kubernetes_cluster_default_node_pool_name
    node_count     = var.azurerm_kubernetes_cluster_default_node_pool_node_count
    vm_size        = var.azurerm_kubernetes_cluster_default_node_pool_vm_size
    max_pods       = var.azurerm_kubernetes_cluster_default_max_pods
    vnet_subnet_id = data.terraform_remote_state.vnet_state.outputs.subnet_A_id
    zones          = ["1", "2"]
  }

  identity {
    type = var.azurerm_kubernetes_cluster_default_node_pool_identiry
  }
  network_profile {
    network_plugin    = "azure"
    network_policy    = "azure"
    load_balancer_sku = "standard"
    outbound_type     = "loadBalancer"
    service_cidr      = "10.2.0.0/22"
    dns_service_ip    = "10.2.0.2" 
  }

}
resource "azurerm_kubernetes_cluster_node_pool" "pool1" {
  name                  = var.node_pool1_name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster.id
  vm_size               = var.azurerm_kubernetes_cluster_default_node_pool_vm_size
  node_count            = var.node_pool1_count
  vnet_subnet_id        = data.terraform_remote_state.vnet_state.outputs.subnet_A_id
  max_pods              = var.node_pool1_max_pods
  mode                  = "User"
  depends_on = [
    azurerm_kubernetes_cluster.cluster
  ]
}
