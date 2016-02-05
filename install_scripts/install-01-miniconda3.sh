#!/bin/bash

su vagrant

ANACONDA_FILE="Miniconda3-latest-Linux-x86_64.sh"
if [ ! -f /vagrant/resources/$ANACONDA_FILE ];
then
    wget -P /vagrant/resources/ https://repo.continuum.io/miniconda/$ANACONDA_FILE
fi

bash /vagrant/resources/$ANACONDA_FILE -b -p /home/vagrant/miniconda3
echo "export PATH=/home/vagrant/miniconda3/bin:\$PATH" >> /home/vagrant/.zshrc
echo "export PATH=/home/vagrant/miniconda3/bin:\$PATH" >> /home/vagrant/.bashrc

/home/vagrant/anaconda/bin/conda update conda -y

# some bullshit here
sudo chown -R vagrant:vagrant /home/vagrant/miniconda3