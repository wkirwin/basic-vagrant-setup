#!/bin/bash

su vagrant

mkdir /home/vagrant/.jupyter

JUPYTER_CONFIG_FILE = "/vagrant/resources/ipython_notebook_config.py"
if [ -f $JUPYTER_CONFIG_FILE ]; then
    cp -f /vagrant/resources/ipython_notebook_config.py /home/vagrant/.jupyter/jupyter_notebook_config.py
fi

sudo chown -R vagrant:vagrant /home/vagrant/.jupyter

/home/vagrant/miniconda3/bin/conda install -c r r-essentials -y
