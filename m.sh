#!/bin/bash
# m for main

cd m/
cp ./stuff/clonegithub.sh ~/clonegithub.sh #this is important to run gclone alias properly

source ./v.sh # vim setup
source ./a.sh # aliases 
source ./z.sh # z-shell (also update its aliases and plugins)

