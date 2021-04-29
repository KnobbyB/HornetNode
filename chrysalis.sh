#!/bin/bash
sudo apt update && apt upgrade -y
wget -qO - https://ppa.hornet.zone/pubkey.txt | sudo apt-key add -
sudo sh -c 'echo "deb http://ppa.hornet.zone stable main" >> /etc/apt/sources.list.d/hornet.list'
sudo apt update
sudo apt install hornet -y
sudo systemctl enable hornet.service
cd /var/lib/hornet