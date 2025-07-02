output "security_group_id" {
    description = "ID del grupo de seguridad creado"
    value       = aws_security_group.my_security_group.id
  
}

output "security_group_name" {
    description = "Nombre del grupo de seguridad creado"
    value       = aws_security_group.my_security_group.name
}

output "security_group_arn" {
    description = "ARN del grupo de seguridad creado"
    value       = aws_security_group.my_security_group.arn
}
output "ingress_rules" {
    description = "Reglas de entrada del grupo de seguridad"
    value       = aws_security_group.my_security_group.ingress
}   