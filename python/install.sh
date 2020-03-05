#!/bin/sh

# Install and upgrade pip and pip-review
apt-get install -y python3-pip
pip3 install --upgrade pip
pip3 install pip-review

# Install Python-related packages
apt-get install -y build-essential
apt-get install -y libssl-dev
apt-get install -y libffi-dev
apt-get install -y python-dev

# Python packages
pip3 install numpy
pip3 install pandas

