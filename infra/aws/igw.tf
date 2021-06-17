## IGW 

# Internet Gateway
resource "aws_internet_gateway" "app1IGW" {
  vpc_id = aws_vpc.app1Vpc.id

  tags = {
    Name = "app1IGW"
  }
}