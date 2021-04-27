#!/bin/sh

# Notes:
# 1. Don't use pip to upgrade itself
# 2. Don't run pip as sudo

# Python & friends (python3 is already installed on Ubuntu 20.04)
sudo apt install -y python3-pip
sudo apt install -y python3-venv
sudo apt install -y python3-dev

# Python-related dev packages
sudo apt install -y build-essential libssl-dev libffi-dev

