#!/bin/bash
set -e

su vagrant
mkdir /home/vagrant/.jupyter
cp -f /vagrant/resources/jupyter_notebook_config.py /home/vagrant/.jupyter/jupyter_notebook_config.py