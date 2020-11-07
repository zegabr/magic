#!/bin/bash
cd ~/Downloads

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update

sudo apt install gh git vim vim-gtk3 vlc libreoffice flameshot -y

gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot ''
echo "GO TO SETTINGS SHORTCUTS AND BIND PRINT TO 'flameshot gui' COMMAND"
# TODO: make a script to bind print to flameshot gui
sleep 3

sudo snap install hub --classic
sudo snap install slack --classic
sudo snap install discord
sudo snap install telegram-desktop
sudo snap install spotify
sudo snap install code --classic

echo ---------------------------ALL DONE------------------------------

############TIME CORRECTION FOR DUAL BOOT WITH WINDOWS#####################
sudo timedatectl set-local-rtc 1 --adjust-system-clock
echo "if it is a dual boot with windows, go to windows now, set right time and you're done"
sudo update-grub

###########ALIASES############################
git clone https://github.com/zegabr/m
cd m/
source a.sh
rm -rf m/

################END##############################
sudo apt update && sudo apt upgrade -y

sudo chmod 777 /etc/default/grub
sudo echo "GRUB_DEFAULT=saved" >> /etc/default/grub
sudo echo "GRUB_SAVEDEFAULT=true" >> /etc/default/grub
sudo update-grub
