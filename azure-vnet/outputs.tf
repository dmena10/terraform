output "subnet" {
  description = "The ID of the created subnet."
  value       = azurerm_subnet.subnet.id
}

output "security_group_id" {
  description = "The ID of the created network security group."
  value       = azurerm_network_security_group.security_group.id
}
