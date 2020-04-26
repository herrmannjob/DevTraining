#Exercício Python 054: Crie um programa que leia o ano de nascimento de sete pessoas. No final, mostre quantas pessoas ainda não atingiram a maioridade e quantas já são maiores.
'''
from datetime import date 
atual = date.today().year 
totmaior = 0 
totmenor = 0 
for pess in range(1, 8):
	nasc = int(input(' Em que ano a {}ª pessoa nasceu? '.format(pess)))
	idade = atual - nasc 
	if idade >= 21:
		totmaior += 1 
	else:
		totmenor += 1 
print('Ao todo tivemos {} pessoas maiores de idade'.format(totmaior))
print('E também tivemos {} pessoas menores de idade'.format(totmenor))
'''
from datetime import date 
print('\033[1;34m*'*19) 
print('GRUPO DA MAIORIDADE') 
print('*'*19,'\033[m') 
atual = date.today().year 
totalmaior = 0 
totalmenor = 0 
for a in range(0, 7): 
	ano = int(input('Em qual ano a {}ª pessoa nasceu? '.format(a+1))) 
	idade = atual - ano 
	if idade >= 21: 
		totalmaior += 1 
	else: 
		totalmenor += 1 
print('\033[1;31m Ao todo tivemos {} pessoa(s) maiore(s) de idade \033[m'.format(totalmaior)) 
print('\033[1;32m Ao todo tivemos {} pessoa(s) menore(s) de idade \033[m'.format(totalmenor))
