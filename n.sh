## draft creation
echo "#include <bits/stdc++.h>
using namespace std;
#define pl '\n'
#define sp ' '
#define Y "YES"
#define N "NO"
typedef long long ll;
typedef pair<ll,ll> pll;







int main(){
	ios::sync_with_stdio(0); cin.tie(0);
	//cout<<fixed<<setprecision(10);
			





}" > a.cpp
cp a.cpp tmp.cpp
echo "paste input here" > i
echo "file for output"
##gedit settings
bash geditsetup.sh 
#echo
##vim settings
#echo "cat m/vimsetup > ~/.vimrc for vimsetup"
#echo
#vim --version | grep +clipboard
#vim --version | grep +autocmd
#echo "if it has +clipboard, you can use ^A, ^C and ^V"
#echo

gedit a.cpp i o &



