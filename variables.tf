variable "aws_region" {
  description = "Estados Unidos Ohio"
  type        = string
  default     = "us-east-2"
}

variable "key_name" {
  description = "Nombre del par de llaves para SSH"
  type        = string
}

variable "sg_id" {
  description = "ID del Security Group que permitirá SSH/HTTP"
  type        = string
}

# Variables que el módulo EC2 necesita:
variable "ec2_ami" {
  description = "AMI para la instancia EC2"
  type        = string
}

variable "ec2_instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"}
  
# Variables adicionales para terraform.tfvars:
variable "instance_ami_id" {
  description = "AMI ID para la instancia EC2"
  type        = string
  default     = "ami-0fe972392d04329e1"
}

variable "vpc_id" {
  description = "ID del VPC donde se desplegará la instancia EC2"
  type        = string
  default     = "vpc-62cb4009"
}

variable "security_group_id" {
  description = "ID del Security Group que permitirá acceso a la instancia EC2"
  type        = string
  default     = "sg-84160bf1"
}
