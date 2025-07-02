module "app_server" {
  source         = "./modules/ec2"
  ami            = var.instance_ami_id
  instance_type  = var.ec2_instance_type
  key_name       = var.key_name
  sg_id          = var.security_group_id
  environment    = "prod"
}



module "backend" {
  source              = "./modules/ec2_instance"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  instance_count      = 2
}

module "rds" {
  source                 = "./modules/rds"
  engine                 = "mysql"
  instance_class         = "db.t2.micro"
  db_name                = "mydb"
  username               = "admin"
  password               = var.db_password
  vpc_security_group_ids = var.security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name
}
