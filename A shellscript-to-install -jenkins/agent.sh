#!/bin/bash

#Installing Java
echo "Installing Java"
sudo apt update
sudo apt install fontconfig openjdk-21-jre -y
java -version
echo "Java Installation completed"
sleep 5

#Installing Docker
echo "Installing Docker on Agent"
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker $USER
sudo newgrp docker
echo "Please log out and back in for Docker group changes to take effect"

echo "Installation complete"
sleep 2

echo "Jenkins Agent Setup Completed successfully"
