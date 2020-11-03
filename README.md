# m
This is stuff that I found to be usefull for linux productivity.

### How to:
Just clone it and run `source m.sh` from inside the repo and all my setup will be yours.

### Content:
a.sh -> copy some usefull aliases into .bashrc and oh-my-zsh.sh (see stuff/a.py)

clonegithub.sh -> handy script to clone repos via https. (run anywhere `gclone <github-user>/<github-repo>` after running m.sh)

v.sh -> vim setup (stuff/.vimrc is copied to ~/.vimrc)

z.sh -> [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/blob/master/README.md) setup (install + add theme + add aliases at stuff/aliases)

m.sh -> my not competitive setup (runs v.sh, a.sh and z.sh)

### How to use my not competitive setup (vim and aliases):
-Run `source m.sh`

### How to use my competitive setup:
1-Run `source c.sh` , wich will clone [my competitive library](https://www.github.com/zegabr/cp) and will stop at `m/../competitive/`

2-Code using x.cpp at competitive/ directory

3-Compile x.cpp with `cw x.cpp` command to compile until first error

4-Run `m`(this is an alias at stuff/aliases) to compile `x.cpp` and run it using one single input file named `"i"`

5-Reset `x.cpp` to the [template](https://github.com/zegabr/cp/blob/master/stuff/tmp.cpp) by running `bash r.sh` at m/../competitive/ folder

### Be aware:
Using some of the scripts will overrides your ~/.vimrc file or your gedit setup

### Extra:
b.sh -> benchmark made in c++ that average number of operations your pc does in 1 sec.
