# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.ssh.insert_key = false

    config.vm.define "nginx" do |nginx|
        nginx.vm.box = "ubuntu/trusty64"
        nginx.vm.network "private_network", ip: "192.168.33.10"
        nginx.vm.provider "virtualbox" do |v|
            v.memory = 1024
        end
    end
end
