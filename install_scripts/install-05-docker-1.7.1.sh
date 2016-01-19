#!/bin/bash

sudo echo deb http://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo apt-get update
sudo apt-get -y install linux-image-extra-$(uname -r)
sudo apt-get install -y lxc-docker-1.7.1

sudo chmod o=rwx /var/run/docker.sock
sudo echo 'DOCKER_OPTS="--insecure-registry gsas-registry.activision.com --insecure-registry usav1gam02:5000"' >> /etc/default/docker
sudo service docker stop
sudo service docker start

sudo usermod -aG docker vagrant
