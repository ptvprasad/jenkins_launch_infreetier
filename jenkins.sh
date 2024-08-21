#!/bin/bash
#updating
sudo apt update -y

# installing java 
sudo apt install openjdk-17-jdk -y

# installing Maven
sudo apt update -y
sudo apt install -y

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
