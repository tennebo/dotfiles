#!/bin/sh

version=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | tail -n 1`
binary=`which docker-compose`

echo "upgrading $binary to $version; existing version info:"
docker-compose --version

sudo curl -L https://github.com/docker/compose/releases/download/${version}/docker-compose-`uname -s`-`uname -m` -o $binary
sudo chmod +x $binary

# Let's see what we got
docker-compose version

