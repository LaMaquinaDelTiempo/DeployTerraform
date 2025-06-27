output "security_group_id" {
    description = "ID del grupo de seguridad creado"
    value       = aws_security_group.my_security_group.id
}

output "security_group_name" {
    description = "Security Group   Grupo1 "
    value       = aws_security_group.my_security_group.name
}