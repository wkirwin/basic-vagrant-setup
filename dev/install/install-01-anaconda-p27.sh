# chmod a+x /home/vagrant/local/vagrant_provision/Anaconda-2.3.0-Linux-x86_64.sh
ANACONDA_FILE = '/vagrant/resources/Anaconda-2.3.0-Linux-x86_64.sh'
if [ ! -f $FILE ];
then
    wget -P /vagrant/resources/ https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.3.0-Linux-x86_64.sh
fi

sudo -u vagrant bash /vagrant/resources/Anaconda-2.3.0-Linux-x86_64.sh -b -p /home/vagrant/anaconda
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.zshrc
echo "export PATH=/home/vagrant/anaconda/bin:\$PATH" >> /home/vagrant/.bashrc

sudo -u vagrant /home/vagrant/anaconda/bin/conda update conda -y

# install some data-sciencey stuff
sudo -u vagrant /home/vagrant/anaconda/bin/conda install psycopg2 seaborn html5lib -y