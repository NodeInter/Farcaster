#!/bin/bash

echo "

███    ██  ██████  ██████  ███████ ██ ███    ██ ████████ ███████ ██████  
████   ██ ██    ██ ██   ██ ██      ██ ████   ██    ██    ██      ██   ██ 
██ ██  ██ ██    ██ ██   ██ █████   ██ ██ ██  ██    ██    █████   ██████  
██  ██ ██ ██    ██ ██   ██ ██      ██ ██  ██ ██    ██    ██      ██   ██ 
██   ████  ██████  ██████  ███████ ██ ██   ████    ██    ███████ ██   ██ 

"                                                                                                                                                

# Update and upgrade system
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install git -y

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl 
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources: 
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Open port
sudo ufw allow 22
sudo ufw allow 2282
sudo ufw allow 2283
sudo ufw allow 2284
sudo ufw allow 2285
sudo ufw allow 3000
sudo ufw enable
sudo ufw reload

# Open New Screen
screen -S farcaster


