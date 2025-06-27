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
  access_key = "AKIAQOMPEKH3YHQKMDGB"
  secret_key = "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"
  # profile = var.aws_profile    # si usas perfiles del AWS CLI
}