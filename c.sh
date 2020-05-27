#competitive setup
#creates competitive/ at parent of m/
rm -rf competitive/
mkdir competitive/


cd competitive/

#copy my competitive code lib
rm -rf cp/
git clone https://github.com/zegabr/cp.git
echo 

pwd
source cp/init.sh

echo "cp folder has:"
ls cp/
