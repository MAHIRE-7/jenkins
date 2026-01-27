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

echo "Do you want to install SonarQube Scanner? (y/n): "
read -r choice

if [[ $choice == "y" || $choice == "Y" ]]; then
    echo "Installing SonarQube Scanner..."
    sudo apt install unzip -y
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-5.0.1.3006-linux.zip
    unzip sonar-scanner-5.0.1.3006-linux.zip
    sudo mv sonar-scanner-5.0.1.3006-linux /opt/sonar-scanner
    sudo ln -s /opt/sonar-scanner/bin/sonar-scanner /usr/bin/sonar-scanner
    echo "SonarQube Scanner installed successfully!"
else
    echo "SonarQube Scanner installation skipped."
fi

echo "Jenkins Agent Setup Completed successfully"
