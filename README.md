# m
This is stuff that I found to be usefull for my linux setup/productivity.

# How to start my setup
Run `source setup.sh` once to install essential applications (I make the decisions here)

Run `source c.sh` if you want my competitive setup (see [cp](https://github.com/zegabr/cp))

Run `bash ssh.sh` once to create ssh keys and setup for github

Run `source v.sh` if you update vim setup (see stuff/.vimrc)

Run `source z.sh` if you want to install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/blob/master/README.md) or update its plugins with the plugins written at z.sh

Run `source a.sh` to update you aliases with the aliases at stuff/aliases.sh (edit it as you want).

Run `source m.sh` to run last four scripts (ssh.sh, z.sh, v.sh and a.sh)

# Extra
After running m.sh, stuff/clonegithub.sh will be added to root directory and alias `gclone` will be created. Use it to clone repos by running `gclone <github_user_name>/<repo_name>`. This will give you a prompt asking if you want to use ssh.

After running a.sh, use `lag word` to search for aliases that has word on it.
