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
brew install clojure/tools/clojure
# brew cask install docker

# AWS
brew tap aws/tap
brew tap weaveworks/tap
brew install aws-sam-cli
brew install weaveworks/tap/eksctl


# From App Store:
# google-chrome
# whatsapp

brew cleanup

