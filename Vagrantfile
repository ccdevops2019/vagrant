# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.ssh.insert_key = false
  config.vm.synced_folder '.', '/vagrant'

 # db
  # `vagrant up db`
  config.vm.define "db" do |db|
     db.vm.hostname = "db.dev"
     db.vm.network :private_network, ip: "172.10.10.11"
     db.vm.provision "shell", path: "Scripts/dbdeploy.sh"
     config.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 512
      v.cpus = 1
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
    end

  end

  # app.
  # `vagrant up app`
  config.vm.define "app" do |app|
     app.vm.hostname = "app.dev"
     app.vm.network :private_network, ip: "172.10.10.10"
     app.vm.provision "shell", path: "Scripts/appdeploy.sh"
     config.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 1024
      v.cpus = 1
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
    end

  end
 
    
end
