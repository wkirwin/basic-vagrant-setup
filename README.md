# Basic Vagrant Setup

Some basic vagrant files for provisioning an Ubuntu 14.04 VirtualBox with some basic niceties (git, tmux, htop, zsh). The vagrant box syncs local folders 

- `d:\local` -> `/home/vagrant/local`
- `d:\projects` -> `/home/vagrant/projects`, and
- `d:\stash` -> `/home/vagrant/stash`.

Various additional packages/resources can be installed by copying the relevant script from dev/install-scripts to dev/install. Right now, only the following are included (maybe more to come in the future):

- Anaconda Python 2.7 (plus Accelerate/Iopro if you have a license)
- set up a IPython notebook server (run with ipython notebook --profile nbserver; located on port 8888)
- Java JDK 8 (Oracle)
- ELK Stack dependencies (untested)
- git config (untested, probably pointless to do via vagrant provisioning)


First time use:
1. run

    wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.3.0-Linux-x86_64.sh dev/resources

and, if you have one, copy your Continuum license into dev/resources.
2. Copy desired install scripts from dev/install-scripts to dev/install.
3. Edit `Vagrantfile` to sync your desired local directories to the corresponding directory in the VM.
4. Run `vagrant up`.

To install additional packages into an existing vagrant box, copy the desired scripts to the dev/install directory and run `vagrant up --provision`.

### Key vagrant commands

vagrant up : loads the VM 
vagrant ssh : access the VM 
vagrant reload --provision : reload the VM with updated settings 
vagrant status : Shows the staus of the VM 
vagrant suspend : to use it at the same point later 
vagrant halt : stops it (power down) 
vagrant destroy : deletes it
vagrant box update : updates the base box (ubuntu/trusty64)