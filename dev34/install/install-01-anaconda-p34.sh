#!/bin/bash

su vagrant

ANACONDA_FILE="/vagrant/resources/Anaconda3-2.3.0-Linux-x86_64.sh"
if [ ! -f $ANACONDA_FILE ];
then
    wget -P /vagrant/resources/ https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-2.3.0-Linux-x86_64.sh
fi

bash /vagrant/resources/Anaconda3-2.3.0-Linux-x86_64.sh -b -p /home/vagrant/anaconda
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.zshrc
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.bashrc

/home/vagrant/anaconda/bin/conda update conda -y

/home/vagrant/anaconda/bin/conda update conda -y
/home/vagrant/anaconda/bin/conda config --add channels "http://usav1gam02.activision.com:6969/pkgs"
/home/vagrant/anaconda/bin/conda config --add channels "https://conda.anaconda.org/ActivisionGameScience"

# some bullshit here
sudo chown -R vagrant:vagrant /home/vagrant/anaconda