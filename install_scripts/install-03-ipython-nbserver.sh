#!/bin/bash

# ----THIS ONLY WORKS WITH ANACONDA PYTHON 3.4 OR LOWER----
# Starting with Anaconda3-2.4.0 (Python 3.5), Anaconda bundles Jupyter. The config for Jupyter is similar, but
#   you need to rename ipython_notebook_config.py to jupyter_notebook_config.py and put it in ~/.jupyter

su vagrant
IPYTHONDIR=/home/vagrant/.ipython /home/vagrant/anaconda/bin/ipython profile create
IPYTHONDIR=/home/vagrant/.ipython /home/vagrant/anaconda/bin/ipython profile create nbserver

IPYTHON_CONFIG_FILE = "/vagrant/resources/ipython_notebook_config.py"
if [ -f $IPYTHON_CONFIG_FILE ]; then
    cp -f /vagrant/resources/ipython_notebook_config.py /home/vagrant/.ipython/profile_nbserver
fi

sudo chown -R vagrant:vagrant /home/vagrant/.ipython

sudo cp /vagrant/resources/ipython-notebook.conf /etc/init
sudo service ipython-notebook start
