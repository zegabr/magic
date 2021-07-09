#!/bin/sh
cd ~/Downloads

sudo snap install libreoffice
sudo snap install slack --classic
sudo snap install discord
sudo snap install telegram-desktop
sudo snap install spotify
sudo snap install code --classic
sudo snap install tree
sudo snap install ccls --classic

sudo apt update
# remove node npm and nodejs
sudo apt remove nodejs
sudo apt remove npm
sudo apt update
sudo rm -rf $(which node)
sudo rm -rf $(which nodejs)
sudo rm -rf $(which npm)
#

sudo apt install \
git \
xclip \
vim-gtk3 \
build-essential \
vlc \
wget \
curl \
flameshot \
usb-creator-gtk \
bat \
fzf \
-y 

# GOOGLE CHROME
read -p "Type y if you want Google Chrome to be installed (y/n): " ans
if [ "$ans" == "y" ]; then
    sudo apt install wget
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo rm -rf google-chrome-stable_current_amd64.deb
fi

# DOCKER 
read -p "Type y if you want Docker to be installed (y/n): " ans
if [ "$ans" == "y" ]; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    rm get-docker.sh
    sudo usermod -aG docker $USER

    sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi
