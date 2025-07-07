
output "security_group_arn" {
    description = "ARN del grupo de seguridad creado"
    value       = aws_security_group.my_sg.arn
}
output "security_group_id" {
    description = "ID del grupo de seguridad creado"
    value       = aws_security_group.my_sg.id
}