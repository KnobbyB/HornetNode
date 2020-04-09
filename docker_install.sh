#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt -y install \
  nano \
  git \
  wget \	
  screen
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce




  