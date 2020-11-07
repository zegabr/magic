#!/bin/bash

sudo apt install vim -y
sudo apt-get install vim-gnome -y
#git 
sudo apt-get install git -y
echo ---------git installed-------------

#compilers
echo
sudo apt install g++ -y
echo -----------c++ compiler installed ----------------
sudo apt install make

sudo apt install default-jre -y
sudo apt install default-jdk -y
echo -----------java compiler and runner installed ---------------

sudo apt install python3-pip -y
pip3 install pylint -y
echo -----------------pylint installed -----------------------
echo

echo ---------------------------ALL DONE------------------------------


###########ALIASES
echo "

alias atualiza='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoclean && sudo apt-get autoremove'
" >> ~/.bashrc
source ~/.bashrc
################END##############################
echo --- alias "atualiza" created ------
alias
atualiza
g++ --version
java --version
python3 --version

