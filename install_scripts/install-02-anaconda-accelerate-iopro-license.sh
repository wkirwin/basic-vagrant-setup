#!/bin/bash

su vagrant

# requires a license from Continuum: put it in local/vagrant_provision
mkdir /home/vagrant/.continuum
if [ -f /vagrant/resources/license*.txt ]; then
    cp /vagrant/resources/license*.txt /home/vagrant/.continuum
fi

/home/vagrant/anaconda/bin/conda install accelerate -y
/home/vagrant/anaconda/bin/conda install iopro -y