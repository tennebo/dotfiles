#!/bin/sh

if [ ! -x /usr/local/bin/brew ]; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "Installed Homebrew."
else
    echo "Homebrew was already installed"
fi

echo "Installing Homebrew Services..."
brew tap homebrew/services
echo "Installed Homebrew Services."

echo "Installing Cask..."
brew tap homebrew/cask
brew tap homebrew/cask-versions
echo "Installed Cask."

echo "Upgrading brew apps..."
brew update
brew upgrade
echo "Done upgrading."

brew doctor

