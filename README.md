# m
This is stuff that I found to be usefull for linux productivity (mostly competitive programming).

### how to:
Just clone it in some folder and run `source m.sh` and all my setup will be yours.

### be aware:
Using some of the scripts will overrides your ~/.vimrc file or your gedit setup

### content:
a.sh -> copy some usefull additionals stuff/extra-bashrc lines into .bashrc and oh-my-zsh.sh (see stuff/a.py)

clonegithub.sh -> handy script to clone repos via https. (run anywhere `gclone <github-user>/<github-repo>` after running m.sh)

v.sh -> vim setup (stuff/.vimrc is copied to ~/.vimrc)

z.sh -> [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/blob/master/README.md) setup (install + add theme + add aliases at stuff/extra-bashrc)

m.sh -> my not competitive setup (runs v.sh, a.sh and z.sh)

unused/g.sh -> gedit setup

### extra:
b.sh -> benchmark made in c++ that average number of operations your pc does in 1 sec. TODO: move this to cp repository

stuff/reset-bashrc.sh -> backups current .bashrc into .bashrc.bak and restore .bashrc


### how to use my not competitive setup (vim and aliases):
-Run `source m.sh`

### how to use my competitive setup (raw C++ and Python):
-Run `source c.sh` , wich will clone [my competitive library](https://www.github.com/zegabr/cp)

-Code using x.cpp at competitive/ directory

-Compile x.cpp with `cw x.cpp` command to compile until first error

-Run `m`(this is an alias at stuff/extra-bashrc) to compile x.cpp and run it using one single input file named "i"

-Reset x.cpp to the [template](https://github.com/zegabr/cp/blob/master/stuff/tmp.cpp) by running `bash r.sh` at m/../competitive/ folder
