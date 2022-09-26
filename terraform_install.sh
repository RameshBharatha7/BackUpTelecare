#!/bin/bash

sudo yum update -y

# Git installation
sudo yum install git -y

#java
sudo amazon-linux-extras install java-openjdk11 -y

#docker and docker compose
sudo yum install docker* -y

sudo chmod 666 /var/run/docker.sock

sudo systemctl start docker

sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose  /usr/bin/docker-compose

#Ansible installation
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

sudo yum install epel-release-latest-7.noarch.rpm

sudo yum update -y

sudo  yum install python python-devel python-pip openssl ansible -y

sudo  amazon-linux-extras install ansible2

sudo yum update -y
