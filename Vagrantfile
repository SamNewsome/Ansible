# -*- mode: ruby -*-
# vi: set ft=ruby :

parentIP = "192.168.1.169"
parentFQDN = "ansibleparent.local"
childIP = "192.168.1.170"
childFQDN = "ansiblechild.local"

Vagrant.configure("2") do |config|

  config.vm.box = "chad-thompson-VAGRANTSLASH-ubuntu-trusty64-gui"


  config.vm.define "parent" do |parent|
  	parent.vm.network "public_network", ip: parentIP
	parent.vm.hostname = parentFQDN
  	config.vm.synced_folder "shared_parent", "/tmp/shared"
	parent.vm.provisionn :shell, path: "parent_bootstrap.sh"

	parent.vm.provider :virtualbox do |parentVM|
		parentVM.gui = true
		parentVM.name = "ansibleparent"
		parentVM.memory = 2048
		parentVM.cpus = 1
	end		 

  end

  
  config.vm.define "child" do |child|
  	child.vm.network "public_network", ip: childIP
	child.vm.hostname = childFQDN
  	config.vm.synced_folder "shared_child", "/tmp/shared"
	child.vm.provisionn :shell, path: "child_bootstrap.sh"

	child.vm.provider :virtualbox do |childVM|
		childVM.gui = true
		childVM.name = "ansiblechild"
		childVM.memory = 2048
		childVM.cpus = 1
	end		 

  end
  

end