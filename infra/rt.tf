# resource "aws_default_route_table" "route_table" {
#   default_route_table_id = aws_vpc.vpc.default_route_table_id

# route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.gw.id
#   }

# tags = {
#     Name = "default route table"
#     env  = var.env
#   }

# }
