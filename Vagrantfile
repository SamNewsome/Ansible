# -*- mode: ruby -*-
# vi: set ft=ruby :

masterIP = "192.168.1.169"
masterFQDN = "ansiblemaster.local"
node1IP = "192.168.1.170"
node1FQDN = "ansiblenode1.local"
node2IP = "192.168.1.171"
node2FQDN = "ansiblenode2.local

Vagrant.configure("2") do |config|

  config.vm.box = "chad-thompson/ubuntu-trusty64-gui"

  config.vm.define "node1" do |node1|
  	node1.vm.network "public_network", ip: node1IP
	node1.vm.hostname = node1FQDN
  	config.vm.synced_folder "shared_node1", "/tmp/shared"
	node1.vm.provision :shell, path: "node_bootstrap.sh"

	node1.vm.provider :virtualbox do |node1VM|
		node1VM.gui = true
		node1VM.name = "ansiblenode1"
		node1VM.memory = 2048
		node1VM.cpus = 2
	end		 

  end

  config.vm.define "node2" do |node2|
  	node2.vm.network "public_network", ip: node2IP
	node2.vm.hostname = node2FQDN
  	config.vm.synced_folder "shared_node2", "/tmp/shared"
	node2.vm.provision :shell, path: "node_bootstrap.sh"

	node2.vm.provider :virtualbox do |node2VM|
		node2VM.gui = true
		node2VM.name = "ansiblenode2"
		node2VM.memory = 2048
		node2VM.cpus = 2
	end		 

  end

  config.vm.define "master" do |master|
  	master.vm.network "public_network", ip: masterIP
	master.vm.hostname = masterFQDN
  	master.vm.synced_folder "shared_master", "/tmp/shared"
	master.vm.provision :shell, path: "master_bootstrap.sh"

	master.vm.provider :virtualbox do |masterVM|
		masterVM.gui = true
		masterVM.name = "ansiblemaster"
		masterVM.memory = 2048
		masterVM.cpus = 2
	end		 

  end

  
end

end