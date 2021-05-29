# m
Usefull scripts for linux setup/productivity (at least I find it usefull).

# What the scripts do
Run `bash g.sh` for gnome settings.

Run `bash setup.sh` for basic setup (take a look at the file stuff/apps.sh first so you don't install things you don't want).

Run `bash ssh.sh` to setup default ssh key for github.

Run `bash add-ssh.sh` to add a new ssh key for github (usefull if you use more than one git account on the same pc).

Run `source z.sh` if you want to install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/blob/master/README.md) (it overrides your .zshrc with mine).

Run `source a.sh` to add my aliases (at stuff/aliases.sh) to yours.

Run `source stuff/custom-keybindings.sh` to add keyboard shortcuts (for now it only adds flameshot for now and it *overrides all custom shortcuts* previously added)

Run `bash v.sh` if you want to override your vim setup with mine (you probably won't, it's basic).

Run `source c.sh` if you want my competitive setup (vim, c++ and [cp](https://github.com/zegabr/cp)) (you probably won't want it too).

Run `source m.sh` to get full setup (one liner it is!).

# Extra interesting stuff
- After running a.sh, some commands will be added:
    - `gclhttps`
        - Clone github repos via https protocol easily by running `gclhttps <github_user_name>/<repo_name>`. For example, running `gclhttps zegabr/m` would clone this repo via https.
    - `gclssh`
        - Usability is similar to `gclhttps`, but it uses ssh protocol.
    - `gclssh-by-id`
        - Clone using another ssh key configured by add-ssh.sh. ex: `gclssh-by-id zegabr zegabr/m` will clone this repo using the url git@github.com-zegabr:zegabr/m.git 
    - `remaper`
        - Run this to remap keyboard numerical row to its symbols. Run again to undo it. For exemple, running `remaper` will map `-` to `_`. This may be usefull if you are a numpad user and don't want to keep pressing shift to reach those symbols at the upper row of keyboard.


    - `lag` ("List all Aliases and Grep"): just a grep for all aliases.
        - Run `lag <word>` and it will grep all aliases with the word inserted. If you use ohmyzsh, try `lag git` haha.
        - Since zsh has a lot of aliases and it is hard to remember them all, I found it usefull to add this alias. 
