#clona cp, remaper
git clone https://github.com/zegabr/cp.git
git clone https://github.com/zegabr/remaper.git

rm ./cp/README.md
rm ./cp/LICENSE
rm ./remaper/README.md
rm ./remaper/LICENSE


mv ./remaper/remaper.sh ~/
mv ./remaper/undo.sh ~/
rm -f -r ./remaper
ls cp/

#cria aliases
source ./m/a.sh
source ./m/n.sh

echo -----to remap keys or undo remapping, use remaper and undoremaper aliases--------
