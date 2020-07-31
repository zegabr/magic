# m
This is stuff that I found to be usefull for linux productivity (mostly competitive programming).

### how to:
Just clone it in some folder and run `source m.sh` and all my setup will be yours.

### be aware:
Using some of the scripts will overrides your ~/.vimrc file or your gedit setup

### content:
a.sh -> copy some usefull aliases which are in STUFF/aliases into .bashrc

clonegithub.sh -> handy script to clone repos via https. (run anywhere `gclone github-user/github-repo` after running m.sh)

g.sh -> gedit setup

v.sh -> vim setup (STUFF/.vimrc is copied to ~/.vimrc)

n.sh -> not competitive setup (runs g.sh, v.sh, a.sh)

m.sh -> c++ competitive setup (clones cp.git, run all scripts)

### extra:
b.sh -> benchmark made in c++ (run `bash b.sh)


### how to use my not competitive setup (vim, gedit and aliases):
-Run `source n.sh`

### how to use my competitive setup:
-Run `source m.sh`

-Code using x.cpp at competitive/ directory

-Compile x.cpp with `gw x.cpp` command to compile until first error

-Run `m`(this is an alias at a.sh) to run inputs that you must save at file named "i"

-Reset x.cpp by running `bash r.sh` at m/../competitive/ folder

-There is a template named tmp.cpp (also a little python3 cheatsheet named pmp.py)
