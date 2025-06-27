resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name        = "app-server-cloud1"
    Environment = var.environment
  }
}