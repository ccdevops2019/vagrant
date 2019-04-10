# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.ssh.insert_key = false
  config.vm.synced_folder '.', '/vagrant'
  #for nfs do: apt-get install nfs-kernel-server

  # master.
  # `vagrant up master`
  config.vm.define "master" do |master|
     master.vm.hostname = "master.dev"
     master.vm.network :private_network, ip: "172.10.10.10"
  #   master.vm.provision "shell", path: "master.sh"
    config.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 1024
      v.cpus = 1
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
    end

  end
  # slave
  # `vagrant up slave`
  config.vm.define "slave" do |slave|
     slave.vm.hostname = "slave.dev"
     slave.vm.network :private_network, ip: "172.10.20.10"
  #   slave.vm.provision "shell", path: "client.sh"  
    config.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 512
      v.cpus = 1
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
    end

  end
    
# config.vm.provision "shell", path: "scenario.sh"
end