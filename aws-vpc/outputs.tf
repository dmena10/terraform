output "name" {
    description = "value of the VPC name tag"
    value = aws_subnet.subnet.id
  
}

output "security_group_id" {
    description = "ID of the security group"
    value = aws_security_group.security_group.id
}