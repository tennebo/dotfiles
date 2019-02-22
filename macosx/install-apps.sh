#!/bin/sh

if [ ! -x /usr/local/bin/brew ]; then
    echo "Please install Homebrew first"
    exit 1
fi

brew update

brew install openssl
brew install python
brew install wget

brew cask install docker
brew cask install java
brew cask install postman
brew cask install spotify

# From App Store:
# google-chrome
# skype
# slack
# whatsapp

brew cleanup

