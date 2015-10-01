# requires a license from Continuum: put it in local/vagrant_provision
mkdir /home/vagrant/.continuum
cp /vagrant/resources/license*.txt /home/vagrant/.continuum

/home/vagrant/anaconda/bin/conda install accelerate -y
/home/vagrant/anaconda/bin/conda install iopro -y