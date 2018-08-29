git clone https://github.com/zegabr/cps.git
git clone https://github.com/zegabr/remaper.git

rm ./cps/README.md
rm ./cps/LICENSE
rm ./remaper/README.md
rm ./remaper/LICENSE

mv ./cps ~/Desktop
mv ./remaper/remaper.sh ~/
mv ./remaper/undo.sh ~/

cd
cd Desktop/cps
bash cps.sh

echo -----to remap keys or undo remapping, use remaper.sh and undo.sh which are at ~/--------
