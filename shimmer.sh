#!/bin/bash
sudo apt update && apt upgrade -y
sudo apt install -y \
	nano \
	git \
	wget \
	screen \
        unzip \
	curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash
sudo apt install -y \
	gcc g++ make \
	nodejs \
    build-essential \
	python-dev
sudo npm install -g node-gyp
sudo apt update

wget https://github.com/iotaledger/goshimmer/releases/download/v0.2.0/GoShimmer-0.2.0_Linux_x86_64.zip
sudo unzip GoShimmer-0.2.0_Linux_x86_64.zip
cd GoShimmer-0.2.0_Linux_x86_64
sudo git clone https://github.com/unioproject/tanglemonitor.git
cd tanglemonitor/backend
sudo npm install zeromq
sudo npm install  
sudo npm audit fix
nodejs tanglemonitor-server.js --net mainnet
cd ~