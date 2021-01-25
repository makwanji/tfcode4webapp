resource "aws_vpc" "rail_vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "rail-vpc"
  }
}


# Public
resource "aws_subnet" "SubnetA" {
  vpc_id     = aws_vpc.rail_vpc.id
  cidr_block = var.SubnetA
  map_public_ip_on_launch = true
  tags = {
    Name = "SubnetA-Public"
  }
}


output "subnet_cidr_blocks" {
  value = [aws_subnet.SubnetA]
}


# Private
resource "aws_subnet" "SubnetB" {
  vpc_id     = aws_vpc.rail_vpc.id
  cidr_block = var.SubnetB

  tags = {
    Name = "SubnetB-Private"
  }
}

# Route table: attach Internet Gateway 
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.rail_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.rail_igw.id
  }
  tags = {
    Name = "publicRouteTable"
  }
}