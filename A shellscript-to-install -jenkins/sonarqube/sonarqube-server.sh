#!/bin/bash
# installing Java17
echo "Installing Java 17"
sleep 2

sudo apt update
sudo apt install openjdk-17-jdk -y
java -version

echo "Java 17 installation Complete"

sleep 5
echo "Downloading SonarQube Server"

cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.3.79811.zip
sudo unzip sonarqube-9.9.3.79811.zip
sudo mv sonarqube-9.9.3.79811 sonarqube

echo "Adding Sonar User"
sudo useradd sonar
sudo chown -R sonar:sonar /opt/sonarqube
sleep 5

echo "starting SonarQube"
sudo su - sonar
cd /opt/sonarqube/bin/linux-x86-64
./sonar.sh start

./sonar.sh status


echo "SonarQube Started Successfully"







