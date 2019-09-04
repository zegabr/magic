#include <set>
#include <map>
#include <vector>
#include <deque>
#include <cmath>
#include <iostream>
#include <iomanip>
#include <cstring>
#include <algorithm>
using namespace std;
#define endl '\n'
#define x first
#define y second
#define pb push_back
#define ppb pop_back
#define pf push_front
#define ppf pop_front
#define ll long long
#define ld long double
#define ii pair<int,int>
#define each(a,c) for(auto &a:c)
#define all(k) (k).begin(),(k).end()
#define fr(i,a,b) for(int i=a;i<=(int)b;i++)
#define rf(i,a,b) for(int i=a;i>=(int)b;i--)
#define db(k) cerr << #k<< " = " << k << endl
#define getchar getchar_unlocked
void sc(int &num){//scan int
	num=0;bool neg=0;
	register int c = getchar();
	if(c=='-'){
		neg=1;
		c=getchar();
	}
	for(;c<='9' and c>='0';c=getchar())
		num=(num<<1)+(num<<3)+c-'0';
	if(neg)num*=-1;
}
void sc(ll &num){//scan ll
	num=0ll;
	bool neg=0;
	register int c = getchar();
	if(c=='-'){
		neg=1;
		c=getchar();
	}
	for(;c<='9' and c>='0';c=getchar())
		num=(num<<1)+(num<<3)+c-'0';
	if(neg)num*=-1ll;
}





int32_t main(){
 	ios::sync_with_stdio(0); cin.tie(0);
	


	return 0;
}
