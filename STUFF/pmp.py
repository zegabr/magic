'''
allinput = stdin.read() #read all input as string (till EOF)
line = stdin.readline() #read one line as string (do not cause errors if eof)
char = stdin.read(1) #read one char
file = open("arq.in",'r') #now file has read() and readline()
a,b,c = sorted([int(x) for x in input().strip().split()]) #multiple init
print(a,b,c)
'''
'''builtin usefull functions: pow,sum,len,abs,max,min,sorted,reversed,bin,chr,ord,hex,oct,list,set,dict'''
'''set() interface: add, discard, clear, in, not in, |, &, ^,update(iteralbe)'''
'''dict() interface: d[key]=value, key in d, key not in d, clear, update(iteralbe)'''
from math import ceil,floor,fabs,factorial,fsum,gcd,log,pow as fpow,sqrt,acos,asin,atan,cos,sin,tan,degrees,radians,pi as PI,hypot
from sys import stdin
line = stdin.readline
def read1int():
	a = int(line().strip())
	return a

def read2int():
	a,b = [int(x) for x in line().strip().split()]
	return a,b

def read3int():
	a,b,c = [int(x) for x in line().strip().split()]
	return a,b,c

def read4int():
	a,b,c,d = [int(x) for x in line().strip().split()]
	return a,b,c,d

#==========main===========








