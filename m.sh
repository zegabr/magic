#!/bin/bash
# m for main

cd
rm -rf remaper/
git clone https://github.com/zegabr/remaper

cd m/
cp ./stuff/clonegithub.sh ~/clonegithub.sh #this is important to run gclone alias properly

source ./v.sh # vim setup
source ./a.sh # aliases 
source ./z.sh # z-shell

