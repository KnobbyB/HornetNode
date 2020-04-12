#!/bin/bash
sudo apt update && apt upgrade -y
sudo apt install -y \
	nano \
	git \
	wget \
	screen \
	curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash
sudo apt install -y \
	gcc g++ make \
	nodejs \
    build-essential \
	python-dev
sudo npm install -g node-gyp
sudo apt update
wget -qO - https://ppa.hornet.zone/pubkey.txt | sudo apt-key add -
sudo sh -c 'echo "deb http://ppa.hornet.zone testing main" >> /etc/apt/sources.list.d/hornet.list'
sudo apt update
sudo apt install hornet

cd /var/lib/hornet
sudo git clone https://github.com/unioproject/tanglemonitor.git
cd tanglemonitor/backend
sudo npm install zeromq
sudo npm install  
sudo npm audit fix
nodejs tanglemonitor-server.js --net mainnet