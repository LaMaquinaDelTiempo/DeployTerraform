output "backend_ips" {
  value = module.backend.public_ips
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}
