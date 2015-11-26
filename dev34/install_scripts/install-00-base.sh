#!/bin/bash

sudo apt-get update
sudo apt-get install git -y
sudo apt-get install tmux -y
sudo apt-get install htop -y
sudo apt-get install zsh -y
sudo apt-get install build-essential -y

# for seamless mode:
#  1. set vb.gui = true in Vagrant file
#  2. uncomment the following
# sudo apt-get install lxde -y

# install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
sudo chsh -s /bin/zsh vagrant

sudo cp /vagrant/resources/hosts /etc