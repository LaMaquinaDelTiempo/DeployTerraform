terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.99.1"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
# Si usas perfiles del AWS CLI, puedes descomentar la línea de abajo y comentar las líneas de access_key y secret_key
# provider "aws" {
#   profile = var.aws_profile
# }

