#!/bin/bash

#Installing Java
echo "Installing Java"
sudo apt update
sudo apt install fontconfig openjdk-21-jre -y
java -version
echo "Java Installation completed"
sleep 5

#Installing Jenkins
echo "Installing Jenkins on master"
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
echo "Installation complete"
sleep 2

adminpass=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo "Jenkins Initial Admin Password: $adminpass"

echo "Jenkins installed successfully"
