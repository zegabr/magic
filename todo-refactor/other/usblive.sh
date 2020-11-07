#!/bin/bash
#basically competitive setup
#git 
sudo apt-get install git -y
echo ---------git installed-------------

#compilers
echo
sudo apt install g++ -y
echo -----------c++ compiler installed ----------------
sudo apt install make

sudo apt install vim -y
sudo apt-get install vim-gnome -y

cd ~/Desktop/
git clone https://github.com/zegabr/m

source m/m.sh


sudo timedatectl set-local-rtc 1 --adjust-system-clock
