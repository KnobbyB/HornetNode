#!/bin/bash
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install nano
sudo apt -y install git
sudo apt -y install screen
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates -y
curl -sL https://deb.nodesource.com/setup_8.x | sudo bash
sudo apt -y install gcc g++ make
sudo apt -y install nodejs
sudo apt -y install build-essential
sudo npm install -g node-gyp
sudo apt -y install python-dev
sudo apt update
wget -qO - https://ppa.hornet.zone/pubkey.txt | sudo apt-key add -
sudo sh -c 'echo "deb http://ppa.hornet.zone testing main" >> /etc/apt/sources.list.d/hornet.list'
sudo apt update
sudo apt install hornet
cd /var/lib/hornet
git clone https://github.com/unioproject/tanglemonitor.git
cd tanglemonitor/backend
sudo npm install  
sudo npm audit fix
nodejs tanglemonitor-server.js --net mainnet

