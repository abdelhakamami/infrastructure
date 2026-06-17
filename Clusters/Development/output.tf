output "id" {
  value = azurerm_kubernetes_cluster.cluster.id
}
output "aks_cluster_name" {
  description = "Name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.cluster.name
}