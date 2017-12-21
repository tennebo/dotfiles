#!/bin/sh

# Install and upgrade pip
apt-get install -y python3-pip
pip3 install --upgrade pip

# Install Python-related packages
apt-get install -y build-essential
apt-get install -y libssl-dev
apt-get install -y libffi-dev
apt-get install -y python-dev

# Python packages
pip3 install numpy
pip3 install pandas

