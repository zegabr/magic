#b de benchmark
echo "
============benchmark============="

echo "
#include<iostream>
#include<time.h>
using namespace std;
typedef long long ll;
int check(int m){
	int c=0;
	ll lim=m*10000000;//m*1e7
	clock_t t=clock();
	for(int i=0;i<lim;i++) c++;
	t=clock()-t;
	double ans = (double)t/CLOCKS_PER_SEC;
	cout<<m<<\"e7=>\"<<ans<<\"s\n\";
	if(ans - 1.0 <= 5e-3) return 1;
	else if(ans - 1.0 <=5e-1) return -1;
	else return 0;
}

ll bs(int l, int r){
	while(l<=r){
		ll m=(l+r)/2;
		int k = check(m);
		if(k==0) return m;
		if(k==1) l=m+1;
		else r=m-1;
	}
	return r;
}

int main(){
	
	ll m = bs(1,100);
	cout<<\"this PC runs \"<<m<<\"e7 operations in 1 sec\n\";
	
	
}

" > benchmark.cpp

g++ benchmark.cpp -o b
time ./b

rm benchmark.cpp b

echo "
============benchmark ended======="
