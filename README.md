# m
Usefull scripts for linux setup/productivity (at least I find it usefull).

# How to start my setup
Run `bash setup.sh` once to install essential applications (take a look at the file first so you don't install things you don't want).

Run `bash ssh.sh` once to create ssh keys and setup for github.

Run `bash v.sh` if you want to override your vim setup with mine (you probably won't, it's basic).

Run `source c.sh` if you want my competitive setup (vim and c++) (see [cp](https://github.com/zegabr/cp)).

Run `source z.sh` if you want to install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/blob/master/README.md).

Run `source a.sh` to update you aliases with the aliases at stuff/aliases.sh (it also consider if ohmyzsh is instaled).

Run `source m.sh` to run scripts: ssh.sh, z.sh, and a.sh.

# Extra interesting stuff
- To update ohmyzsh plugins and theme, see PLUGINS and THEME variables at z.sh file, change as you wish, then run `source z.sh` again to update.

- After running a.sh, some functions will be usable:
    - `gclhttps`
        - Clone github repos via https protocol easily by running `gclhttps <github_user_name>/<repo_name>`. For example, running `gclhttps zegabr/m` would clone this repo via https.
    - `gclssh`
        - Usability is similar to `gclhttps`, but it uses ssh protocol.
    - `remaper`
        - Run this to remap keyboard numerical row to its symbols. Run again to undo it. For exemple, running `remaper` will map `-` to `_`. This may be usefull if you are a numpad user and don't want to keep pressing shift to reach those symbols at the upper row of keyboard.


    - `lag` ("List all Aliases and Grep"): just a grep for all aliases.
        - Run `lag word` and it will grep all aliases with the word inserted. If you use ohmyzsh, try `lag git` haha.
        - Since zsh has a lot of aliases and it is hard to remember them all, I found it usefull to add this alias. 
