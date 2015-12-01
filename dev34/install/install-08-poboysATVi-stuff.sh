#!/bin/bash

su vagrant

# add conda channels
/home/vagrant/anaconda/bin/conda config --add channels "http://usav1gam02.activision.com:6969/pkgs"
/home/vagrant/anaconda/bin/conda config --add channels "https://conda.anaconda.org/ActivisionGameScience"

/home/vagrant/anaconda/bin/conda install python-snappy pytest-docker