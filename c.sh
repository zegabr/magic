# competitive setup

#initial setup
source ./a.sh # aliases

#creates competitive/ at parent of m/
cd ../
rm -rf competitive/
mkdir competitive/

cd competitive/

#copy my competitive code lib
rm -rf cp/
git clone git@github.com:zegabr/cp.git
echo 

pwd
source cp/init.sh

echo "cp folder has:"
ls cp/

pwd
