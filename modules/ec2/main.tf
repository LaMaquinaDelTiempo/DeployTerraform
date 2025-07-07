resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]
  subnet_id              = var.subnet_id
  user_data              = var.user_data
  user_data_replace_on_change = true
  tags = {
    Name        = "app-server-cloud1"
    Environment = var.environment
  }
}

output "instance_public_ip" {
  value = aws_instance.app_server.public_ip
}