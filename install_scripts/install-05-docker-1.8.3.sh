#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo cp -f /vagrant/resources/docker.list /etc/apt/sources.list.d/docker.list

sudo apt-get update
sudo apt-get install -y linux-image-extra-$(uname -r)
sudo apt-get install -y apparmor

sudo apt-get install -y docker-engine=1.8.3-0~trusty

sudo chmod o=rwx /var/run/docker.sock
sudo echo 'DOCKER_OPTS="--insecure-registry gsas-registry.activision.com --insecure-registry usav1gam02:5000"' >> /etc/default/docker
sudo service docker stop
sudo service docker start

sudo usermod -aG docker vagrant

