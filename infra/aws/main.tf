provider "aws" {
  profile = "default"
  # region  = "us-east-1"
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "terrafrom-state-staging-jm"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}

