#! /bin/bash
## CentOS / AWS OS Syntext
sudo yum update -y

# Install git
sudo yum install -y git

# Install Apache
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html

# Install docker 
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user

# Install Ruby
sudo yum install gcc
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --rails
## install in new terminal
# gem install sinatra

## create container
# cd /home/ec2-user/project4/docker-ruby-hello-world
# docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:2.5 ruby helloworld.rb

