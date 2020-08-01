from os.path import expanduser
home = expanduser("~")
TAG = '##EXTRA BASHRC'

origin=open('./stuff/extra-bashrc.sh','r')
aliases=origin.read().split('\n')
origin.close()

alia = []
boo = False
for ali in aliases:#pega aliases a ser colocado no bashrc
	if ali == TAG:
		boo = not boo
	elif boo:
		alia.append(ali)

bashrc = open(home+'/.bashrc','r')#abre bashrc pra leitura
bash_text = bashrc.read().split('\n')
bashrc.close()

bash_sem_alias = []
boo = True
for linha in bash_text:#pega bashrc sem aliases
	if linha == TAG:
		boo = not boo
	elif boo:
		bash_sem_alias.append(linha)

bash_com_alias = bash_sem_alias
bash_com_alias.append(TAG)
for linha in alia:
	bash_com_alias.append(linha)
bash_com_alias.append(TAG)#bash com aliases completo

texto_final=""
for linha in bash_com_alias:
	if linha != '\n' and linha !="":
		texto_final += linha + "\n"

bashrc = open(home+'/.bashrc','w')#abre bashrc pra escrita
bashrc.write(texto_final)
bashrc.close()

