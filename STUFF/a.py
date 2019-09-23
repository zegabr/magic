import os

origin=open('./aliases','r')
aliases=origin.read().split('\n')
alia = []
boo = False
for ali in aliases:#pega aliases a ser colocado no bashrc
	if ali == '##ALIASES':
		boo = not boo
	elif boo:
		alia.append(ali)

for ali in alia:
	print(ali)

from os.path import expanduser
home = expanduser("~")
bashrc = open(home+'/.bashrc','r')
bash_text = bashrc.read().split('\n')
bash_sem_alias = []
boo = True
for linha in bash_text:
	if linha == '##ALIASES':
		boo = not boo
	elif boo:
		bash_sem_alias.append(linha)

for linha in bash_sem_alias:
	print(linha)
