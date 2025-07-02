output "instance_ids" {
  value = aws_instance.backend[*].id
}

output "public_ips" {
  value = aws_instance.backend[*].public_ip
}
