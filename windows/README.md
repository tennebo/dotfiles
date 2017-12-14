## Docker on WSL

### Install packages to allow apt to use a repository over HTTPS

    sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

### Add Docker's official GPG key
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

### Set up the repository
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    apt-cache policy docker-ce

### Update source lists
    sudo apt-get update

### Install Docker
    sudo apt-get install docker-ce
    sudo apt-get install docker-compose

Reference:

https://blog.jayway.com/2017/04/19/running-docker-on-bash-on-windows/
