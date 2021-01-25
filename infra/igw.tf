# IGW 

# Internet Gateway
resource "aws_internet_gateway" "rail_igw" {
  vpc_id = aws_vpc.rail_vpc.id

  tags = {
    Name = "rail-igw"
  }
}