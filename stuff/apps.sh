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