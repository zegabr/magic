#!/bin/sh
# PYTHON ENV SETUP (TODO)
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

curl https://pyenv.run | bash
echo "
#pyenv/
export PATH="$HOME/.pyenv/bin/:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

" >> ~/.bashrc
exec $SHELL
pyenv install 3.8.5 #change to newest version
pyenv global 3.8.5
exec $SHELL
