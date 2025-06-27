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
variable "access_key" {
  description = "Clave de acceso para AWS"
  type        = string
  default     = "AKIAQOMPEKH3YHQKMDGB" 
  
}

variable "secret_key" {
  description = "Clave secreta para AWS"
  type        = string
  default     = "0TMJ4BHDhQa3Z0nyMfywFn3x4greJvW4weM25OWu"

}
variable "my_ip_cidr" {
  description = "CIDR de tu IP para acceso SSH"
  type        = string
  default     = "203.0.113.5/32"  
}
variable "environment" {
  description = "Entorno de despliegue (dev, prod, etc.)"
  type        = string
  default     = "dev" 
  
}