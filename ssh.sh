#!/bin/sh
read -p "Type y if you want to setup ssh for git? (y/n): " ans
if [ "$ans" == "y" ]; then

    read -p "Enter Your Github username: " USER_NAME
    read -p "Enter Your Github email: " USER_EMAIL


    echo "setting github ssh with email $USER_EMAIL!"

    ssh-keygen -t rsa -b 4096 -C $USER_EMAIL
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
    xclip -selection clipboard < ~/.ssh/id_rsa.pub

    echo """
    ===================================================
    The ssh key is in clipboard, add it to github client
    profile->settings->ssh->new ssh key
    ===================================================
    """

    git config --global user.email $USER_EMAIL
    git config --global user.name $USER_NAME
fi
