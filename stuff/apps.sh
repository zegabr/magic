#!/bin/sh
cd ~/Downloads

sudo snap install libreoffice
sudo snap install slack --classic
sudo snap install discord
sudo snap install telegram-desktop
sudo snap install spotify
sudo snap install code --classic

sudo apt update
sudo apt install git vim-gtk3 build-essential vlc wget curl flameshot -y # these are considered essential

# GOOGLE CHROME
read -p "Type y if you want Google Chrome to be installed (y/n): " ans
if [ "$ans" == "y" ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo rm -rf google-chrome-stable_current_amd64.deb
fi

# DOCKER 
read -p "Type y if you want Docker to be installed (y/n): " ans
if [ "$ans" == "y" ]; then
    sudo apt-get remove docker docker-engine docker.io containerd runc
    sudo apt-get purge docker-ce docker-ce-cli containerd.io
    sudo rm -rf /var/lib/docker
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    sudo groupadd docker
    sudo usermod -aG docker $USER

    #docker compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    docker-compose --version
    docker --version
    echo "after relogging, run newgrp docker"
fi