## draft creation
echo "#include <bits/stdc++.h>
using namespace std;

#define pl '\n'
#define sp ' '
typedef long long ll;
typedef pair<ll,ll> pll;







int main(){
  ios::sync_with_stdio(0); cin.tie(0);
  //cout<<fixed<<setprecision(10);


}
" > a.cpp
cp a.cpp tmp.cpp
echo "paste input here" > i

##gedit settings
source geditsetup.sh

##vim settings
cat m/vimsetup >  ~/.vimrc

vim --version | grep +clipboard
vim --version | grep +autocmd
echo "if it has +clipboard, you can use ^A, ^C and ^V"
echo

echo "a.cpp and i (input file) added to your home folder"

