
km = float(input('Qual a distância em (Km) você deseja percorrer? '))
if km <= 200:
    print('Sua passagem vai custar {} reais. '.format(km * 0.5))
else:
    print('Sua passagem vai custar {} reais. '.format(km * 0.45))

#ou

print('preços:')
print('0,50 ate 200 km')
print('0,45 maisde 200 km')
n1=int(input('qual a distancia da viajem que voce quer fazer?'))
if n1<= 200 or n1==200:
    n2=(n1*50)/100
    print('para uma viajem de {}.km voce vai pagar {}'.format(n1,n2))
else:
    n3=(n1*45)/100
    print('para uma viagem de {}.km voce vai pagar {}'.format(n1,n3))

#ou

distancia = float(input('Qual é a sua distância da sua viagem? '))
print('Você está preste a começar uma viagem de {}km.'.format(distancia))
if distancia <= 200:
	preço = distancia * 0.50
else:
	preço = distancia * 0.45
print('E o preço da sua passagem será de R${:.2f}'.format(preço))
