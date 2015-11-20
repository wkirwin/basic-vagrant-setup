#!/bin/bash

# install dependencies for the ELK stack
export PATH=/home/vagrant/anaconda/bin:\$PATH
pip install tweepy langid praw
conda install twisted -y