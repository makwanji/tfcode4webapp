## variables.tf of module
variable "aws_region" {
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
  default = "ami-0aeeebd8d2ab47354"
}

variable "ec2_key" {
  default = "devops"
}

variable "cluster_instance_type" {
  default = "t2.medium"
}