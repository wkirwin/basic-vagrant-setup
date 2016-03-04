#!/bin/bash

su vagrant

ANACONDA_FILE = 'Anaconda2-2.4.1-Linux-x86_64.sh'
if [ ! -f /vagrant/resources/$ANACONDA_FILE ];
then
    wget -P /vagrant/resources/ https://repo.continuum.io/archive/$ANACONDA_FILE
fi

bash $ANACONDA_FILE -b -p /home/vagrant/anaconda
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.zshrc
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.bashrc

/home/vagrant/anaconda/bin/conda update conda -y

# some bullshit here
sudo chown -R vagrant:vagrant /home/vagrant/anaconda
sudo chown -R vagrant:vagrant /home/vagrant/.ipython

