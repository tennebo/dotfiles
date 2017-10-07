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

### Oracle

    apt-add-repository ppa:webupd8team/java
    apt-get install -y -q oracle-java8-installer
    apt-get install -y -q oracle-java9-installer
    apt-get install -y -q oracle-java8-set-default
    apt-get install -y -q oracle-java9-set-default

## Installing Node.js on Ubuntu

    apt-get install python-software-properties
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    apt-get install nodejs

## Installing VS Code Extensions

To capture installed extensions:

    code --list-extensions

To install new extensions:

    code --install-extension ms-vscode.cpptools
