# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_CONFIGURATION_VERSION = 2

Vagrant.configure(VAGRANT_CONFIGURATION_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "private_network", ip: "192.168.33.13"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2", "--ioapic", "on"]
  end

  config.vm.provision "shell", path: "install_groonga.sh"
end
