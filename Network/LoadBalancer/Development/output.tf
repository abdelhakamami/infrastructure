output "load_balancer_public_ip" {
  description = "Public IP of the load balancer"
  value       = azurerm_public_ip.lb.ip_address
}
output "load_balancer_id" {
  description = "ID of the Load Balancer"
  value       = azurerm_lb.lb.id
}
output "lb_frontend_ip_configuration_name" {
  description = "Name of the frontend IP configuration"
  value       = azurerm_lb.lb.frontend_ip_configuration[0].name
}
output "load_balancer_dns" {
  description = "DNS name of the Load Balancer"
  value       = azurerm_public_ip.lb.fqdn
}
