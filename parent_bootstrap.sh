#!/bin/bash

#Install packages
sudo apt-get update
sudo apt-get -y openssh-server openssh-client
sudo apt-get -y install ansible

#Edit /etc/ansible/hosts
fqdn=$(facter fqdn)
ip=$(facter ipaddress_eth1)
sudo sed '$ a\ > [hosts]' /etc/ansible/hosts
sudo sed '$ a\ > 192.168.1.170' /etc/ansible/hosts