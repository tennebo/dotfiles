#!/bin/sh

if [ ! -x /usr/local/bin/brew ]; then
    echo "Installing Homebrew..."
    /usr/bin/env ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Installed Homebrew."
else
    echo "Homebrew was already installed"
fi

echo "Installing Cask..."
brew tap caskroom/cask
echo "Installed Cask."

echo "Upgrading brew apps..."
brew update
brew upgrade
echo "Done upgrading."

brew doctor

