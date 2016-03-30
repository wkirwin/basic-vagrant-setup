#!/bin/bash

su vagrant

ANACONDA_FILE="Anaconda3-2.5.0-Linux-x86_64.sh"
if [ ! -f /vagrant/resources/$ANACONDA_FILE ];
then
    wget -P /vagrant/resources/ https://repo.continuum.io/archive/$ANACONDA_FILE
fi

bash /vagrant/resources/$ANACONDA_FILE -b -p /home/vagrant/anaconda
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.zshrc
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.bashrc

/home/vagrant/anaconda/bin/conda update conda -y

sudo chown -R vagrant:vagrant /home/vagrant/anaconda

mkdir /home/vagrant/.jupyter
cp /vagrant/resources/ipython_notebook_config.py /home/vagrant/.jupyter/jupyter_notebook_config.py
sudo chown -R vagrant:vagrant /home/vagrant/.jupyter
