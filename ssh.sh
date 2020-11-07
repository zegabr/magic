USER_EMAIL="jgsp2@cin.ufpe.br"
USER_NAME="zegabr"

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
