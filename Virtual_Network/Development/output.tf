output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_A_id" {
  description = "The ID of Subnet A for the Load Balancer"
  value       = azurerm_subnet.subnetA.id
}

output "subnet_A_name" {
  description = "The name of Subnet A for the Load Balancer"
  value       = azurerm_subnet.subnetA.name
}

output "subnet_B_id" {
  description = "The ID of Subnet B for AKS"
  value       = azurerm_subnet.subnetB.id
}

output "subnet_B_name" {
  description = "The name of Subnet B for AKS"
  value       = azurerm_subnet.subnetB.name
}
