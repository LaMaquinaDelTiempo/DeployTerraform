module "app_server" {
  source           = "./modules/ec2"
  ami              = var.instance_ami_id
  instance_type    = var.ec2_instance_type
  key_name         = var.key_name
  sg_id            = module.security_group_Group1.security_group_id
  subnet_id        = module.networking.subnet_id
  user_data        = file("${path.module}/user_data_frontend.sh")
  environment      = var.environment
}

module "security_group_Group1" {
  source            = "./modules/security_group"
  security_group_name = "app-server-sg"
  vpc_id            = var.vpc_id
  ingress_rules     = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [var.my_ip_cidr]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 3000
      to_port     = 3000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]  # Puerto de Remix con pm2
    }
  ]
  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

module "networking" {
  source = "./modules/networking"
  vpc_id = var.vpc_id
}