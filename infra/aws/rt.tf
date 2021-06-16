resource "aws_default_route_table" "route_table" {
  default_route_table_id = aws_vpc.app1Vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.app1IGW.id
  }

  tags = {
    Name = "app1Vpc route table"
    # env  = var.env
  }
}