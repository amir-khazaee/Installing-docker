#!/bin/bash
sudo apt update
sudo timedatectl set-timezone Asia/Tehran
sudo apt install -y resolvconf
sudo echo "deb http://mirror.arvancloud.ir/ubuntu jammy universe" >> /etc/apt/sources.list
sudo echo "deb http://mirror.arvancloud.ir/ubuntu focal universe" >> /etc/apt/sources.list
echo "nameserver 178.22.122.100" | sudo tee /etc/resolvconf/resolv.conf.d/base > /dev/null
sudo systemctl restart resolvconf  # Restart to apply the new nameserver

# Remove any existing Docker-related packages
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do
  sudo apt-get remove -y
done

# Install necessary packages for Docker
sudo apt-get update
sudo apt-get install -y ca-certificates curl

sudo snap install docker
sudo apt-get update

# Sleep commands
sleep 100


sudo docker login -u #your user name -p #your password

sleep 100

# Run Docker test container
sudo docker run hello-world
