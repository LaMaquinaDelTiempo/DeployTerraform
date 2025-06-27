module "app_server" {
  source         = "./modules/ec2"
  ami            = var.instance_ami_id
  instance_type  = var.ec2_instance_type
  key_name       = var.key_name
  sg_id          = var.security_group_id
  environment    = "prod"
}