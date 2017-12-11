#!/bin/bash

#Install packages
sudo apt-get update
sudo apt-get -y openssh-server openssh-client
sudo ufw disable
