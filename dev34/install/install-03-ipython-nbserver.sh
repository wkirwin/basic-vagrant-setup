#!/bin/bash

su vagrant
IPYTHONDIR=/home/vagrant/.ipython /home/vagrant/anaconda/bin/ipython profile create
IPYTHONDIR=/home/vagrant/.ipython /home/vagrant/anaconda/bin/ipython profile create nbserver
cp -f /vagrant/resources/ipython_notebook_config.py /home/vagrant/.ipython/profile_nbserver
sudo chown -R vagrant:vagrant /home/vagrant/.ipython