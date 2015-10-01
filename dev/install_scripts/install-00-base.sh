#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install git -y
echo "Installed git."
sudo apt-get install tmux -y
echo "Installed tmux."
sudo apt-get install htop -y
echo "Installed htop."
sudo apt-get install zsh -y
echo "Installed zsh"
sudo apt-get install g++ -y

# for seamless mode:
#  1. set vb.gui = true in Vagrant file
#  2. uncomment the following
# sudo apt-get install lxde -y

# install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
sudo chsh -s /bin/zsh vagrant
echo "Reboot after provisioning."