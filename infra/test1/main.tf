provider "aws" {
  # access_key = "ACCESS_KEY"
  # secret_key = "SECRET_KEY"
  profile = "default"
  region     = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "terrafrom-state-staging-jm"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0b9bd0b532ebcf4c9"
  instance_type = "t2.micro"
}
