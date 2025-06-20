module "app_server" {
  source         = "./modules/ec2"
  ami            = var.ec2_ami
  instance_type  = var.ec2_instance_type
  key_name       = var.key_name
  sg_id          = var.sg_id
  environment    = "prod"
}
