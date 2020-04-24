mult = eval(input("Qual é a tabuada que gostarias de ver? ")) #Pergunta ao user qual tabuada gostaria de ver
print()
print("Tabuada do",mult,":")
for j in range(1,13):
    print("%d x %d = %d" % (j, mult, j*mult))