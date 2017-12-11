#!/bin/bash

#Install packages
sudo apt-get update
sudo apt-get -y openssh-server openssh-client
sudo ufw disable
sudo apt-get -y install ansible

#Edit /etc/ansible/hosts
fqdn=$(facter fqdn)
ip=$(facter ipaddress_eth1)
sudo sed -i "$ip" /etc/ansible/hosts
