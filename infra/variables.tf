## variables.tf of module
variable "aws_region" {
  # default = "ap-south-1"
  default = "us-east-1"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

# Public
variable "SubnetA" {
  default = "10.0.1.0/24"
}

# Private
variable "SubnetB" {
  default = "10.0.2.0/24"
}

variable "image_id" {
  # default = "ami-0a4a70bd98c6d6441" 
  default = "ami-0885b1f6bd170450c"
}
