
variable "key_name" {
  description = "Nombre del par de llaves para SSH"
  type        = string
  default = "terraform-nodo-tesla"
}

# Variables que el módulo EC2 necesita:
variable "ec2_instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
  }
  
# Variables adicionales para terraform.tfvars:
variable "instance_ami_id" {
  description = "AMI ID para la instancia EC2"
  type        = string
  default     = "ami-0c803b171269e2d72"
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