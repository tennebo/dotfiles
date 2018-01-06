#!/bin/sh

if [ ! -x /usr/local/bin/brew ]; then
    echo "Please install Homebrew first"
    exit 1
fi

brew update

brew install wget

brew cask install docker
brew cask install google-chrome
brew cask install postman
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install whatsapp

brew cleanup
brew cask cleanup

