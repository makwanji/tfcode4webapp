# Create AWS Instance
resource "aws_instance" "rail-web" {
  ami             = var.image_id
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.SubnetA.id
  security_groups = [aws_security_group.allow_tls.id]
  key_name        = "rail"
  tags = {
    Name = "rail-web"
  }
}

resource "aws_instance" "rail-db" {
  ami             = var.image_id
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.SubnetB.id
  security_groups = [aws_security_group.allow_db.id]
  key_name        = "rail"

  tags = {
    Name = "rail-db"
  }
}

provisioner "local-exec" {
    command = "ansible-playbook -i '${aws_instance.rail-web.public_ip},' --private-key ${var.ssh_key_private} provision.yml"
}
