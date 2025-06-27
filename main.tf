module "app_server" {
  source = "./modules/security_group"
  vpc_id=var.vpc_id
}
