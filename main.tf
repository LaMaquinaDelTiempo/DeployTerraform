module "app_server" {
<<<<<<< HEAD
  source = "./modules/security_group"
  vpc_id=var.vpc_id
=======
  source         = "./modules/ec2"
  ami            = var.instance_ami_id
  instance_type  = var.ec2_instance_type
  key_name       = var.key_name
  sg_id          = var.security_group_id
  environment    = "prod"
>>>>>>> ac14b4380dbdafd8a5abcd171e2dd444e7a5b644
}
