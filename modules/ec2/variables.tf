variable "ami" {
  description = "The AMI to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The key pair name for SSH access"
  type        = string
}

variable "sg_id" {
  description = "The security group ID for the EC2 instance"
  type        = string
}

variable "environment" {
  description = "The environment for the EC2 instance"
  type        = string
}