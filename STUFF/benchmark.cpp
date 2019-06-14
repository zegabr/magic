#include<iostream>
#include<time.h>
#include<math.h>
using namespace std;
typedef long long ll;
const int multiplier = 1000000;
const int range = 1000;

int check(int m){
	int c=0;
	ll lim=m*multiplier;
	clock_t t=clock();
	for(int i=0;i<lim;i++) c++;
	t=clock()-t;
	double ans = (double)t/CLOCKS_PER_SEC;
	cout<<m<<"e6=>"<<ans<<"s\n";
	if(fabs(ans-1.0)  <= 1e-2) return 0;
	else if(ans < 1.0) return -1;
	else return 1;
}

ll bs(int l, int r){
	while(l<=r){
		ll m=(l+r)/2;
		int k = check(m);
		if(k==0) return m;
		if(k==-1) l=m+1;
		else r=m-1;
	}
	return r;
}

int main(){
	
	ll m = bs(1,range);
	long double m2 = (long double)m/(range/10);
	cout<<"this PC runs "<<m2<<"e8 operations in 1 sec\n";
	
	
}

