# m
This is stuff that I found to be usefull for competitive programming and other not competitive stuff.

### how to:
Just clone it in some folder and run `source m/m.sh` and all my setup will be yours.

### be aware:
Using some of the scripts will overrides your ~/.vimrc file or your gedit setup

**Recommended** to run scripts from outside m/

### content:
a.sh -> maybe usefull aliases

g.sh -> gedit setup

v.sh -> vim setup (vimsetup is a copy of my vimrc file)

n.sh -> c++ competitive setup (runs g.sh and v.sh)

m.sh -> main competitive setup (clones cp.git and runs: n.sh and a.sh)

### extra:
b.sh -> benchmark made in c++




### how to use my competitive setup:
-Run source m/m.sh

-Code using x.cpp at training directory

-Compile x.cpp with `make` command to compile until first error

-Run `m`(this is an alias at a.sh) to run with 3 different inputs that you must save at i1, i2 and i3 files

-Reset x.cpp running `bash r.sh` at training folder (which you will be at end of m.sh)
