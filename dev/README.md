To install desired components, move the desired script from ./install-scripts into ./install. 

### Initial Installation
Run 

    vagrant up

### Additional Provisioning
Move additional install scripts into ./install-scripts and run

    vagrant up --provision

If any scripts have been previously run, they will be 

### Requirements

The various install-*.sh scripts require ./resources to contain the following:

install-01-anaconda-p27.sh

    Anaconda-2.3.0-Linux-x86_64.sh

install-02-anaconda-accelerate-iopro-license.sh

    .continuum/license*.txt (Continuum license)

install-03-ipython-nbserver.sh

    .ipython/ipython_notebook_config.py

install-20-git-config.sh

    *edit* install-20-git-config.sh with the desired git credentials


### Key vagrant commands
vagrant up : loads the VM 
vagrant ssh : access the VM 
vagrant reload --provision : reload the VM with updated settings 
vagrant status : Shows the staus of the VM 
vagrant suspend : to use it at the same point later 
vagrant halt : stops it (power down) 
vagrant destroy : deletes it
vagrant box update : updates the base box (ubuntu/trusty64)