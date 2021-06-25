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

# sudo yum -y install java-1.8.0-openjdk-devel
# echo "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.282.b08-1.amzn2.0.1.x86_64" >> ~/.bash_profile
# echo "export JAVA_HOME" >> ~/.bash_profile
# echo "PATH=${JAVA_HOME}:$PATH:${JAVA_HOME}\bin" >> ~/.bash_profile

#Install Jenkins
sudo yum -y install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y install jenkins

sudo service jenkins start
sudo chkconfig jenkins on
