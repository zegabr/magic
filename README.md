# m
This is stuff that I found to be usefull for competitive programming.

### how to:
Just clone it in some folder and run source m/m.sh and all my setup will be yours.

### be aware:
Using some of the scripts will overrides your ~/.vimrc file or your gedit setup

**Recommended** to run scripts out of m/ directory

### content:
a.sh -> maybe usefull aliases

g.sh -> gedit setup

v.sh -> vim setup (vimsetup is a copy of my vimrc file)

n.sh -> c++ competitive setup (runs g.sh and v.sh)

m.sh -> main competitive setup (clones cp.git and runs: n.sh and a.sh)

### extra:
b.sh -> benchmark made in c++

e.sh -> enviroment setup for Systems and Software Engeneering setup at CIn - UFPE 

    (run `source e.sh` command for it to works properly) 
    
    (just need to run one time per lab PC, it will create ESS directory at Desktop)




### how to use my competitive setup:
-Run source m/m.sh

-Code using x.cpp

-Compile x.cpp with `make` command or compile until first error with `make 1` command
