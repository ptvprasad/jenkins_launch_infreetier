#!/bin/bash
#updating
sudo apt update -y

# installing java 
sudo apt install openjdk-17-jdk -y

# installing Maven
#sudo apt update -y
#sudo apt install maven -y

# installing docker
#sudo apt install docker.io -y

#importing ansible repo and install
#sudo apt update
#sudo apt install software-properties-common
#sudo add-apt-repository --yes --update ppa:ansible/ansible
#sudo apt install ansible -y


# to install jenkins import the jenkins to apt repo
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
 https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

# installing jenkins
sudo apt update -y
sudo apt install jenkins -y

# open jenkins password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
