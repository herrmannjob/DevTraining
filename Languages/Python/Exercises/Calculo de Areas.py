 
print ("------------------")
print ("\n (1) quadrado")
print ("\n (2) triangulo")
print ("\n (3) trapezio")
print ("\n (4) losango")
print ("\n (5) circulo")
print ("------------------")

n = input("\n\n Escolha um poligono:")


if n == 1:
   b = input("\n Tamanho da base:") 
   a = input("\n Tamanho da altura:")
   area = b*a
   print ("\n Area igual a:",area)
   


if n == 2:
   c = input("\n Tamanho da base:")
   d = input("\nTamanho da altura:")
   area = c*d/2
   print ("\n Area igual a:",area) 

if n == 3:
   e = input("\n Tamanho da base maior:")
   f = input("\n Tamanho da base menor:")
   g = input("\n Tamanho da altura:")
   area = (e+f)*g/2
   print ("\n Area igual a:",area)    

if n == 4:
   h = input("\n Tamanho da diagonal:")
   i = input("\n Tamanho da outra diagonal:")
   area = h*i/2
   print ("\n Area igual a:",area)

if n == 5:
   print ("\n (1) Setor")
   print ("\n (2) Circulo")

   c = input("\n\n Escolha o tipo de conta:")

   if c == 1: 
      t = input("\n Tamanho do raio:")
      s = input("\n Angulo em graus:")
      area = s*t*t*3.14/360
      pi = area/3.14
      print ("\n Area igual a:",area) 
      print ("\n Ou a area em Pi e igual a:",pi) 
   if c == 2:
      t = input("\n Tamanho do raio:")
      area = t*t*3.14
      pi = area/3.14
      print ("\n Area igual a:",area)
      print ("\n Ou a area em Pi e igual a:",pi)  
   
 
 


