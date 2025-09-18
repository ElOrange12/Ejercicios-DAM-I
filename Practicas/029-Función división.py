def hazDivision (dividendo, divisor):
    resultado = dividendo/divisor
    return resultado
    
print(hazDivision(4, 3))

for i in range(-100, 101):
    for j in range(-100, 101):
        hazDivision(i, j)
        
print('Todo ha ido correcto')
