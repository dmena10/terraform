output "vm_ip" {
  description = "The public IP address of the virtual machine"
  value       = azurerm_public_ip.public_ip.ip_address
}
