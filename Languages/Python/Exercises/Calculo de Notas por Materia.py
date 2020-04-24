# Faça um Programa que peça seu nome, RA e todas as notas por matérias, mostre a média de cada matéria, e retorne se você passou ou reprovou na matéria. Posterior, de ano.
Nome = input('Nome Completo do Aluno: ')
Apelido = input('Apelido: ')
RA = input('RA (Registro do Aluno): ')

Materia1 = input('Nome da matéria: ')
Prof = input('Professor(a): ')
n1 = float(input('1o Nota: '))
n2 = float(input('2o Nota: '))
n3 = float(input('3o Nota: '))
n4 = float(input('4o Nota: '))
media1 = (n1+n2+n3+n4)/4
media_minima = 7
print ('Sua média em', Materia1, 'é:', media1)
if media1 > media_minima:
	print('Parabéns!', Apelido, 'Você passou acima da média!')
elif media1 == media_minima:
	print('Foi por pouco!', Apelido, 'Você passou na média, parabéns!')
else:
	print('Infelizmente você não atingiu a média mínima para passar :(')

Materia2 = input('Nome da matéria: ')
Prof = input('Professor(a): ')
n1 = float(input('1o Nota: '))
n2 = float(input('2o Nota: '))
n3 = float(input('3o Nota: '))
n4 = float(input('4o Nota: '))
media2 = (n1+n2+n3+n4)/4
media_minima = 7
print ('Sua média em', Materia1, 'é:', media2)
if media2 > media_minima:
	print('Parabéns!', Apelido, 'Você passou acima da média!')
elif media2 == media_minima:
	print('Foi por pouco!', Apelido, 'Você passou na média, parabéns!')
else:
	print('Infelizmente você não atingiu a média mínima para passar :(')

Materia3 = input('Nome da matéria: ')
Prof = input('Professor(a): ')
n1 = float(input('1o Nota: '))
n2 = float(input('2o Nota: '))
n3 = float(input('3o Nota: '))
n4 = float(input('4o Nota: '))
media3 = (n1+n2+n3+n4)/4
media_minima = 7
print ('Sua média em', Materia1, 'é:', media3)
if media3 > media_minima:
	print('Parabéns!', Apelido, 'Você passou acima da média!')
elif media3 == media_minima:
	print('Foi por pouco!', Apelido, 'Você passou na média, parabéns!')
else:
	print('Infelizmente você não atingiu a média mínima para passar :(')

media_final = (media1+media2+media3) / 3
media_minima_final = 7
print ('Sua Média Final é:', media_final)
if media_final > media_minima_final:
	print('Parabéns!', Apelido, 'Você passou acima da média!')
elif media_final == media_minima_final:
	print('Foi por pouco!', Apelido, 'Você passou na média, parabéns!')
else:
	print('Infelizmente você não atingiu a média mínima para passar :(')