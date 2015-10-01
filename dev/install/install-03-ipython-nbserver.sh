sudo -u vagrant IPYTHONDIR=/home/vagrant/.ipython /home/vagrant/anaconda/bin/ipython profile create
sudo -u vagrant IPYTHONDIR=/home/vagrant/.ipython /home/vagrant/anaconda/bin/ipython profile create nbserver
sudo -u vagrant cp -f /vagrant/resources/ipython_notebook_config.py /home/vagrant/.ipython/profile_nbserver