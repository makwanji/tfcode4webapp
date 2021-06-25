# Remote backend
terraform {
  backend "s3" {
    bucket = "terrafrom-state-staging-jm"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}

# Required provider 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# AWS provider
provider "aws" {
  profile = "default"
  region  = var.aws_region
}