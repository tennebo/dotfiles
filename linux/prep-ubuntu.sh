#!/bin/bash

sudo apt update && sudo apt upgrade -y

# Dev tools
sudo apt install -y build-essential wget zip unzip

# Java
sudo apt install -y openjdk-17-jre-headless

# Maven
sudo apt install -y maven

# Zsh
sudo apt install -y zsh

# Python
# sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install -y python3.11
sudo update-alternatives --install /usr/bin/python3 python /usr/bin/python3.11 1
sudo update-alternatives --install /usr/bin/python3 python /usr/bin/python3.10 2

# Node.js
curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# AWS CDK
sudo npm install -g aws-cdk

pushd /tmp

# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

# AWS SAM
# curl https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip --remote-name
wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
sudo ./sam-installation/install
sam --version

popd

