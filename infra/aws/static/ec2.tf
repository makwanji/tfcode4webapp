## Create AWS Instance

resource "aws_instance" "myDevVM" {
  ami                         = var.image_id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.SubnetA.id
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  key_name                    = var.ec2_key
  associate_public_ip_address = "true"
  
  tags = {
    Name = "myDevVM"
  }
}

resource "aws_instance" "Jenkins" {
  ami                         = var.image_id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.SubnetA.id
  vpc_security_group_ids      = [aws_security_group.allow_db.id]
  associate_public_ip_address = "true"
  key_name                    = var.ec2_key

  tags = {
    Name = "Jenkins"
  }
}