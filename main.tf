module "app_server" {
  source         = "./modules/ec2"
  ami            = var.instance_ami_id
  instance_type  = var.ec2_instance_type
  key_name       = var.key_name
  sg_id          = var.security_group_id
  environment    = "prod"
}
module "security_group" {
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
      from_port   = 5000
      to_port     = 5000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 5173
      to_port     = 5173
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    } ]
    egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
    ]
}