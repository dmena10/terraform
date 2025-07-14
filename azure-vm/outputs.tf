output "vm_ip" {
  description = "The public IP address of the virtual machine"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "subnet_id" {
  description = "The ID of the subnet where the VM is deployed"
  value       = data.terraform_remote_state.vnet.outputs.subnet_id
  
}