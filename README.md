# m
This is stuff that I found to be usefull for competitive programming and other not competitive stuff.

### how to:
Just clone it in some folder and run `source m/m.sh` and all my setup will be yours.

### be aware:
Using some of the scripts will overrides your ~/.vimrc file or your gedit setup

**Important**: Scripts work if you run from outside m/

### content:
a.sh -> maybe usefull aliases

clonegithub.sh -> handy script to clone repos via https. (run anywhere `gitclone github-user/github-repo` after copying it for home folder and running a.sh)

g.sh -> gedit setup

v.sh -> vim setup (vimsetup is a copy of my vimrc file)

n.sh -> not competitive setup (runs g.sh, v.sh, a.sh)

m.sh -> c++ competitive setup (clones cp.git, run all scripts and teleports)

### extra:
b.sh -> benchmark made in c++ (run `bash m/b.sh`)


### how to use my not competitive setup (vim, gedit and aliases):
-Run `source m/n.sh`

### how to use my competitive setup:
-Run `source m/m.sh`

-Code using x.cpp at training directory

-Compile x.cpp with `make` command to compile until first error

-Run `m`(this is an alias at a.sh) to run inputs that you must save at i1 file

-Reset x.cpp by running `bash r.sh` at training folder (which you will be after teleports)

-There is 2 templates named tmp.cpp and ymp.cpp (also a little python3 cheatsheet named pmp.py)
