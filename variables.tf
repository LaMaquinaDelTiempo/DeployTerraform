variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-2" 
}

variable "ec2_ami" {
  description = "The AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0fe972392d04329e1" 
}

variable "ec2_instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro" 
}

variable "key_name" {
  description = "The key pair name for SSH access"
  type        = string
  default     = "key_pair"
}

variable "sg_id" {
  description = "The security group ID for the EC2 instance"
  type        = string
  default     = "sg-84160bf1" 
}

variable "environment" {
  description = "The environment for the EC2 instance"
  type        = string
  default     = "prod"
}