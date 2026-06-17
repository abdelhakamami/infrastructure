output "resource_group_name" {
  value = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
}
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
  value       = azurerm_subnet.SubnetA.id
}

output "subnet_A_name" {
  description = "The name of Subnet A for the Load Balancer"
  value       = azurerm_subnet.SubnetA.name
}

output "subnet_B_id" {
  description = "The ID of Subnet B for AKS"
  value       = azurerm_subnet.SubnetB.id
}

output "subnet_B_name" {
  description = "The name of Subnet B for AKS"
  value       = azurerm_subnet.SubnetB.name
}
