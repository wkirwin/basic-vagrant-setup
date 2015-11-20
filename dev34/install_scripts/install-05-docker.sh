#!/bin/bash

sudo service docker stop
sudo apt-get remove lxc-docker
sudo apt-get autoremove
sudo apt-get update
sudo apt-get -y install linux-image-extra-$(uname -r)
sudo sh -c "wget -qO- https://get.docker.io/gpg | apt-key add -"
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\ > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get -y install lxc-docker

sudo chmod o=rwx /var/run/docker.sock
sudo echo 'DOCKER_OPTS="--insecure-registry gsas-registry.activision.com --insecure-registry usav1gam02:5000"' >> /etc/default/docker
sudo service docker stop
sudo service docker start

sudo usermod -aG docker vagrant
