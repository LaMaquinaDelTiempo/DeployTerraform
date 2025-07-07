resource "aws_subnet" "main" {
  vpc_id            = var.vpc_id
  cidr_block        = "172.31.100.0/24"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true
}

output "subnet_id" {
  value = aws_subnet.main.id
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}
