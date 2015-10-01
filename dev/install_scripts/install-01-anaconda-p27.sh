# chmod a+x /home/vagrant/local/vagrant_provision/Anaconda-2.3.0-Linux-x86_64.sh
sudo -u vagrant bash /vagrant/resources/Anaconda-2.3.0-Linux-x86_64.sh -b -p /home/vagrant/anaconda
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.zshrc
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.bashrc

sudo -u vagrant /home/vagrant/anaconda/bin/conda update conda -y
sudo -u vagrant /home/vagrant/anaconda/bin/conda install pyscopg2 seaborn bokeh html5lib -y