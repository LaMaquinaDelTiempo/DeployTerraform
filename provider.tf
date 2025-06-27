# File: provider.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.99.1"
    }
  }
}

provider "aws" {
  region  = "us-east-2"
  access_key = ""
  secret_key = ""
  # profile = var.aws_profile    # si usas perfiles del AWS CLI
}
