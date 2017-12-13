#!/bin/bash

#Install packages
sudo apt-get update
sudo apt-get -y openssh-server openssh-client
sudo ufw disable
sudo apt-get -y install ansible

#Edit /etc/ansible/hosts
sudo sed -i "$ a\[hosts]\n192.168.1.170" /etc/ansible/hosts

#Create SSH Key
ssh-keygen -t rsa
ssh-agent bash
ssh-add ~/.ssh/id_rsa
ssh-copy-id vagrant@192.168.1.170


