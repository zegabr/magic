#!/bin/bash
#n not competitive

cp ./clonegithub.sh ~/clonegithub.sh #this is important to run gitclone alias properly
source ./g.sh ##gedit setup
source ./v.sh ##vim setup
source ./a.sh ##aliases 
# TODO: this is making bugs when oh my zsh is installed, remove a.sh or remove zsh, Best answer is remove zsh by adding zsh aliases to stuff/aliases and make normal terminal show current branch
