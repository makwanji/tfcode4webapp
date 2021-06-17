resource "aws_security_group" "myDevPort" {
  name        = "myDevPort"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.app1Vpc.id

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.app1Vpc.cidr_block]
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    description = "SSH from All"
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "myDevPort"
  }
}


# resource "aws_security_group" "allow_db" {
#   name        = "allow_db"
#   description = "Allow DB inbound traffic"
#   vpc_id      = aws_vpc.app1Vpc.id

#   ingress {
#     description = "TLS from VPC"
#     from_port   = 3366
#     to_port     = 3366
#     protocol    = "tcp"
#     cidr_blocks = [aws_vpc.app1Vpc.cidr_block]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "allow_db"
#   }
# }