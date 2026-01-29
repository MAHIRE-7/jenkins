#!/bin/bash
#AWS CLI
echo -e "\033[32mInstalling AWS CLI\033[0m"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip -y
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip aws/
sleep 5

#KUBECTL
echo -e "\033[32mInstalling Kubectl\033[0m"
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
kubectl version --short --client
sleep 5

#EKSCTL for AWS
echo -e "\033[32mInstalling EKSCTL\033[0m"
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
sleep 5

echo -e "\033[32mAWS login\033[0m"
sleep 2

echo -e "\033[32mEnter AWS ACCESS KEY ID: \033[0m"
read -r AWS_ACCESS_KEY_ID

echo -e "\033[32mEnter AWS SECRET ACCESS KEY: \033[0m"
read -s AWS_SECRET_ACCESS_KEY
echo

echo -e "\033[32mEnter AWS DEFAULT REGION (e.g., us-east-1): \033[0m"
read -r AWS_DEFAULT_REGION

# Configure AWS CLI
aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID"
aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY"
aws configure set default.region "$AWS_DEFAULT_REGION"
aws configure set default.output_format json

echo -e "\033[32mAWS configured successfully!\033[0m"