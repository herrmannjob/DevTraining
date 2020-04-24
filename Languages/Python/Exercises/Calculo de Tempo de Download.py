''' 18) Faça um programa que peça o tamanho de um arquivo para download (em MB) e a velocidade de um link de Internet (em Mbps), 
calcule e informe o tempo aproximado de download do arquivo usando este link (em minutos). '''

tamanho = float(input('Tamanho do arquivo (MB): '))
velocidade = float(input('Velocidade de Internet (MBps): '))
tamanhokbps = tamanho * 1000
velocidadekbps = velocidade * 1000
velocidadeaprox = velocidadekbps / 8
segundos = tamanhokbps / velocidadeaprox
print('Tempo aproximado de download: %.0f Minutos ' %((tamanhokbps / velocidadeaprox) / 6))

''' Em velocidadekbps convertemos MB em KB, o mesmo ocorre em tamanhokbps (para um número melhor aproximado)
em segundos nós validamos o resultado e convertemos para minutos ao dividir por 60. '''