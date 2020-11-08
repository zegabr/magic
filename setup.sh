#!/bin/bash
# FULL LINUX SETUP
bash stuff/apps.sh # for app instalation
source a.sh # for aliases setup
bash stuff/dual-boot-clock.sh # will ask if you have dual boot time problems (and solve it)

################END##############################
sudo apt update && sudo apt upgrade -y

read -p "Type y if you want GRUB to be updated (y/n): " ans
if [ "$ans" == "y" ]; then
    # sudo chmod 777 /etc/default/grub
    sudo echo "GRUB_DEFAULT=saved" >> /etc/default/grub
    sudo echo "GRUB_SAVEDEFAULT=true" >> /etc/default/grub
    sudo update-grub
fi
