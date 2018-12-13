#clona cps, remaper
git clone https://github.com/zegabr/cps.git
git clone https://github.com/zegabr/remaper.git

rm ./cps/README.md
rm ./cps/LICENSE
rm ./remaper/README.md
rm ./remaper/LICENSE

#move cps pro desktop
mv ./cps ~/Desktop/
mv ./remaper/remaper.sh ~/
mv ./remaper/undo.sh ~/
rm -f -r ./remaper

cd
cd Desktop/cps/
#roda cps
bash cps.sh

echo -----to remap keys or undo remapping, use remaper.sh and undo.sh which are at ~/--------

#cria aliases
source ~/m/a.sh
