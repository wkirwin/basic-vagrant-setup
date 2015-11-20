#!/bin/bash

su vagrant

# install some data-sciencey stuff
/home/vagrant/anaconda/bin/conda install psycopg2 seaborn html5lib requests pytest -y
/home/vagrant/anaconda/bin/pip install cookiecutter