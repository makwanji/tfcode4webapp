#! /bin/bash
## CentOS / AWS OS Syntext
sudo yum update -y

# Install git
sudo yum install -y git

# Install docker 
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
