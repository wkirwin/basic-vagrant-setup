#!/bin/bash

su vagrant

# add conda channels
/home/vagrant/anaconda/bin/conda config --add channels "http://usav1gam02.activision.com:6969/pkgs"
/home/vagrant/anaconda/bin/conda config --add channels "https://conda.anaconda.org/ActivisionGameScience"

/home/vagrant/anaconda/bin/conda install python-snappy pytest-docker

# install some data-sciencey stuff
/home/vagrant/anaconda/bin/conda install psycopg2 seaborn html5lib requests pytest -y
/home/vagrant/anaconda/bin/pip install cookiecutter bottle