#!/bin/bash

# #!/usr/bin/env bash

MINICONDA_FILE = '/vagrant/resources/Miniconda3-latest-Linux-x86_64.sh'
if [ ! -f $MINICONDA_FILE ];
then
    wget -P /vagrant/resources/ https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Miniconda3-Linux-x86_64.sh
fi

su vagrant
bash MINICONDA_FILE -b -p /home/vagrant/anaconda
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.zshrc
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.bashrc

/home/vagrant/anaconda/bin/conda update conda -y

# add conda channels
/home/vagrant/anaconda/bin/conda config --add channels "http://usav1gam02.activision.com:6969/pkgs"
/home/vagrant/anaconda/bin/conda config --add channels "https://conda.anaconda.org/ActivisionGameScience"

/home/vagrant/anaconda/bin/conda install --file /vagrant/conda.export