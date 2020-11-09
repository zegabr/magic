#!/bin/sh
cd ~/Downloads

# GTIHUB CLI
read -p "Type y if you want Github CLI to be installed (y/n): " ans
if [ "$ans" == "y" ]; then
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
    sudo apt-add-repository https://cli.github.com/packages
    sudo apt update
    sudo apt install gh
fi

# GOOGLE CHROME
read -p "Type y if you want Google Chrome to be installed (y/n): " ans
if [ "$ans" == "y" ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
fi

# LIBREOFFICE
read -p "Type y if you want Libreoffice to be installed (y/n): " ans
if [ "$ans" == "y" ]; then
    sudo add-apt-repository ppa:libreoffice/ppa
    sudo apt update
    sudo apt install libreoffice
fi

sudo apt update
sudo apt install git vim vim-gtk3 make build-essential vlc wget curl flameshot -y # these are considered essential

gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot ''
echo "GO TO SETTINGS SHORTCUTS AND BIND PRINT TO 'flameshot gui' COMMAND"
# TODO: make a script to bind print to flameshot gui
sleep 3

sudo snap install slack --classic
sudo snap install discord
sudo snap install telegram-desktop
sudo snap install spotify
sudo snap install code --classic