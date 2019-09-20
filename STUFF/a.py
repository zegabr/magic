import os

origin=open('./aliases','r')

aliases=origin.read().split('\n')

for ali in aliases:
	print(ali)
