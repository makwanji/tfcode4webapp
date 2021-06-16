## Create AWS Instance

# resource "aws_instance" "app1web" {
#   ami                         = var.image_id
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.SubnetA.id
#   vpc_security_group_ids      = [aws_security_group.allow_tls.id]
#   key_name                    = var.ec2_key
#   associate_public_ip_address = "true"
  
#   tags = {
#     Name = "app1web"
#   }
# }

# resource "aws_instance" "app1db" {
#   ami                         = var.image_id
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.SubnetB.id
#   vpc_security_group_ids      = [aws_security_group.allow_db.id]
#   associate_public_ip_address = "false"
#   key_name                    = var.ec2_key

#   tags = {
#     Name = "app1db"
#   }
# }