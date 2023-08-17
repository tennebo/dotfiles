#!/bin/sh

if [ ! -x /usr/local/bin/brew ]; then
    echo "Please install Homebrew first"
    exit 1
fi

brew update

brew install openssl
brew install python
brew install pyenv
brew install wget
brew install java
# brew cask install docker

brew install --cask multipass

# AWS
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl


# From App Store:
# google-chrome
# whatsapp

brew cleanup

brew tap-info --installed
brew list --full-name
