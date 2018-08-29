git clone https://github.com/zegabr/cps.git
git clone https://github.com/zegabr/remaper.git

rm ./cps/README.md
rm ./cps/LICENSE
rm ./remaper/README.md
rm ./remaper/LICENSE

mv ./cps ~/Desktop
mv ./remaper/remaper.sh ~/Desktop/cps

cd
cd Desktop/cps
bash cps.sh
