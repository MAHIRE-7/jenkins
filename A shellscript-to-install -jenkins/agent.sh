#!/bin/bash

#Installing Java
echo -e "\033[32mInstalling Java\033[0m"
sudo apt update
sudo apt install fontconfig openjdk-21-jre -y
java -version
echo -e "\033[32mJava Installation completed\033[0m"
sleep 5

#Installing Docker
echo -e "\033[32mInstalling Docker on Agent\033[0m"
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker $USER
sudo newgrp docker
echo "Please log out and back in for Docker group changes to take effect"

echo -e "\033[32mInstallation complete\033[0m"
sleep 5

echo "Do you want to install SonarQube Scanner? (y/n): "
read -r choice


if [[ $choice == "y" || $choice == "Y" ]]; then
    echo -e "\033[32mInstalling SonarQube Scanner...\033[0m"
    sudo apt update
    sudo apt install curl unzip -y
    cd /opt
    sudo curl -fL -o sonar-scanner.zip \
    https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip
    
    if [ $? -eq 0 ]; then
        sudo unzip sonar-scanner.zip
        sudo mv sonar-scanner-5.0.1.3006-linux sonar-scanner
        sudo ln -s /opt/sonar-scanner/bin/sonar-scanner /usr/bin/sonar-scanner
        sudo rm sonar-scanner.zip
        echo -e "\033[32mSonarQube Scanner installed successfully!\033[0m"
    else
        echo "Failed to download SonarQube Scanner"
    fi
else
    echo "SonarQube Scanner installation skipped."
fi

echo -e "\033[32mJenkins Agent Setup Completed successfully\033[0m"

sleep 10 

sudo reboot
