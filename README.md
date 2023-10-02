# dotfiles

Linux and Windows configuration files

## Upgrading a Debian/Ubuntu distro

First, get the current release up to date:

    apt-get update
    apt-get upgrade
    apt-get dist-upgrade

Then upgrade the release:

    apt-get install update-manager-core
    do-release-upgrade
    lsb_release -a

More details here: <https://www.digitalocean.com/community/tutorials/how-to-upgrade-to-ubuntu-16-04-lts>

## Installing Java on Ubuntu

### OpenJDK

    apt-add-repository ppa:openjdk-r/ppa
    apt-get install -y -q openjdk-8-jdk

## Installing Node.js on Ubuntu

    apt-get install python-software-properties
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    apt-get install nodejs

## Installing Oh My Zsh

https://github.com/robbyrussell/oh-my-zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

