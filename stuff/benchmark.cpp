#include<iostream>
#include<time.h>
#include<math.h>//use g++ -std=c++11 -pthread benchmark.cpp  to compile
#include <thread>
#include <mutex>   
using namespace std;

//may return 0 when not able to detect
const auto processor_count = std::thread::hardware_concurrency();





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


std::mutex mtx; 
void  threaderedBenchmark(int l, int r, ll* answer){
	//mulththread code
	ll ra = bs( l,  r);
	//~mulththread code
	//inside the lock, there is only one thread running  this code
	mtx.lock();
	*answer+=ra;//add ra in the value stored in answer. ra is shared across threads
	mtx.unlock();
	//~single thread code

}

/*


int main(){
	
	ll m = bs(1,range);
	long double m2 = (long double)m/(range/10);
	cout<<"this PC runs "<<m2<<"e8 operations in 1 sec\n";
	
	
}*/
int main(){
	ll answer = 0;
	
	cout<<processor_count<<" threads available \n";
	int l = 5;
	//initialize the threads array
	thread threads  [processor_count];
	//start every thread
	for(int i=0;i< processor_count;i++)
		threads[i] = thread(threaderedBenchmark, l,range, &answer);
	//wait for each thread to finish
	for (auto& th : threads) th.join();

	long double m2 = (long double)answer/(range/10);
	cout<<"this PC runs "<<m2<<"e8 operations in "<<l<<" sec\n";
	
}

