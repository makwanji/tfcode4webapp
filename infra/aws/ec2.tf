# ## Create AWS Instance

# commented this code to remove devvm

# resource "aws_instance" "myDevVM" {
#   ami                         = var.image_id
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.SubnetA.id
#   vpc_security_group_ids      = [aws_security_group.myDevPort.id]
#   key_name                    = var.ec2_key
#   associate_public_ip_address = "true"
#   user_data                   = file("myDevVM.sh")

#   tags = {
#     Name = "myDevVM"
#   }
# }

# resource "aws_instance" "Jenkins" {
#   ami                         = var.image_id
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.SubnetA.id
#   vpc_security_group_ids      = [aws_security_group.myDevPort.id]
#   associate_public_ip_address = "false"
#   key_name                    = var.ec2_key
#   user_data                   = file("Jenkins.sh")

#   tags = {
#     Name = "Jenkins"
#   }
# }