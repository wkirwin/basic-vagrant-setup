# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Use DHCP for local  (guest-host) networking; find guest the ip address with ifconfig
  # (port forwarding not needed with this option: use <guest-ip>:port from host instead)
  config.vm.network "private_network", type: "dhcp"  
  
  # IPython notebook port
  # config.vm.network :forwarded_port, guest: 8888, host: 8888

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # config synced folders
  config.vm.synced_folder("d:/local", "/home/vagrant/local",
    owner: "vagrant", group: "vagrant", 
    mount_options: ["dmode=775,fmode=664"])

  config.vm.synced_folder("d:/projects", "/home/vagrant/projects",
    owner: "vagrant", group: "vagrant",
      mount_options: ["dmode=775,fmode=664"])

  config.vm.synced_folder("d:/Stash", "/home/vagrant/stash",
    owner: "vagrant", group: "vagrant", 
    mount_options: ["dmode=775,fmode=664"])
  
  config.vm.synced_folder("d:/github", "/home/vagrant/github",
    owner: "vagrant", group: "vagrant",
    mount_options: ["dmode=775,fmode=664"])

  # config.ssh.private_key_path = "~/.ssh/id_rsa"
  # config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.name = "dev-scala"

    # boot with headless mode
    vb.gui = false
    # Tweak the below value to adjust RAM
    vb.memory = 8192
    # Tweak the number of processors below
    vb.cpus = 4
    # use host DNS name resolution
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    
  end
  config.vm.provision :shell, :path => "bootstrap.sh"
end
