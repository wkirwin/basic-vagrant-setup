# Basic Vagrant Setup

Some basic vagrant files for provisioning an Ubuntu 14.04 VirtualBox with some basic niceties (git, tmux, htop, zsh). The vagrant box syncs local folders 

- `d:\local` -> `/home/vagrant/local`
- `d:\projects` -> `/home/vagrant/projects`, and
- `d:\stash` -> `/home/vagrant/stash`.

Various additional packages/resources can be installed by copying the relevant script from dev/install-scripts to dev/install. Right now, only the following are included (maybe more to come in the future):

- Anaconda Python 2.7, 3.4 or 3.latest (plus Accelerate/Iopro if you have a license)
- set up a IPython notebook server (Python 2.7 or 3.4) (run with ipython notebook --profile nbserver; located on port 8888)
- Java JDK 8 (Oracle)
- Scala 2.11.7 + SBT 0.13.9
- Docker (latest, plus start the Docker daemon)


Usage:

1. (Optional) Download install resources and put them in the resources directory (e.g., Anaconda2-2.4.1-Linux-x86_64.sh).
Put any other required resources (contents of `~/.ssh`, a `hosts` file, Continuum licences, etc...).

2. Copy desired install scripts from `./install-scripts` to `./install`.

3. Edit `Vagrantfile` to sync your desired local directories to the corresponding directory in the VM.

4. Run `vagrant up`.

To install additional packages into an existing vagrant box, copy the desired scripts to the dev/install directory and run `vagrant up --provision`.

### Key vagrant commands

`vagrant up` : loads the VM 

`vagrant ssh` : access the VM 

`vagrant reload --provision` : reload the VM with updated settings 

`vagrant status` : Shows the staus of the VM 

`vagrant suspend` : to use it at the same point later 

`vagrant halt` : stops it (power down) 

`vagrant destroy` : deletes it

`vagrant box update` : updates the base box (ubuntu/trusty64)
