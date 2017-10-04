# Upgrading a Debian/Ubuntu distro

# First, get the current release up to date
apt-get update
apt-get upgrade
apt-get dist-upgrade

# Then upgrade the release
apt-get install update-manager-core
do-release-upgrade

# Check
lsb_release -a


# More details here:
https://www.digitalocean.com/community/tutorials/how-to-upgrade-to-ubuntu-16-04-lts
