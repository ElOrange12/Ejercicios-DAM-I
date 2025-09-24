```
'''
    Duelos de dragones
    v1.0 Daniel Oliveira Vidal
    
'''
########################### Preguntamos los datos ###########################
print('')

################## Dragón A ##################
nombre_dragon_a = input('Dime el nombre del dragón A: ')
edad_dragon_a = input('Dime la edad del dragón A: ')
print('')

clasificacion_dragon_a = ''
fuerza_dragon_a = 0
resistencia_dragon_a = 0
vida_dragon_a = 50
danyo_ataque_a = 0

print('____________________________________________')
print('')
print('--> Nombre: ', nombre_dragon_a)
print('--> Edad: ', edad_dragon_a)
print('____________________________________________')
print('')

################## Dragón B ##################
nombre_dragon_b = input('Dime el nombre del dragón B: ')
edad_dragon_b = input('Dime la edad del dragón B: ')
print('')

clasificacion_dragon_b = ''
fuerza_dragon_b = 0
resistencia_dragon_b = 0
vida_dragon_b = 50
danyo_ataque_b = 0

print('____________________________________________')
print('')
print('--> Nombre: ', nombre_dragon_b)
print('--> Edad: ', edad_dragon_b)
print('____________________________________________')
print('')

########################### Aseguramos que sean enteros ###########################

try:
    edad_dragon_a = int(edad_dragon_a)
    
except:
    edad_dragon_a = 100
    
try:
    edad_dragon_b = int(edad_dragon_b)
    
except:
    edad_dragon_b = 100
    
########################### Clasificamos los dragones ###########################

if edad_dragon_a < 50:
    clasificacion_dragon_a = 'Joven'
    
elif edad_dragon_a >= 50 and edad_dragon_a < 200:
    clasificacion_dragon_a = 'Adulto'
    
else:
    clasificacion_dragon_a = 'Anciano'
    
print('El dragón A es un',clasificacion_dragon_a)
print('')
    
if edad_dragon_b < 50:
    clasificacion_dragon_b = 'Joven'
    
elif edad_dragon_b >= 50 and edad_dragon_b < 200:
    clasificacion_dragon_b = 'Adulto'
    
else:
    clasificacion_dragon_b = 'Anciano'
    
print('El dragón B es un',clasificacion_dragon_b)
print('')

########################### Entrenamos al dragón ###########################

################## Función fuerzaBase ##################
def calculaFuerzaBase(edad, letra_dragon):
    '''
        calculaFuerzaBase
        Entrada: Edad del dragón
        Salida: Fuerza base en relación a la edad; Joven = 3, Adulto = 4, Anciano = 2 
    '''
    if letra_dragon == 'a':
        if edad_dragon_a < 50:
            fuerza_base_a = 3
        
        elif edad_dragon_a >= 50 and edad_dragon_a < 200:
            fuerza_base_a = 4
        
        else:
            fuerza_base_a = 2
        
        return fuerza_base_a
    
    else:
        if edad_dragon_b < 50:
            fuerza_base_b = 3
        
        elif edad_dragon_b >= 50 and edad_dragon_a < 200:
            fuerza_base_b = 4
        
        else:
            fuerza_base_b = 2
        
        return fuerza_base_b
        
fuerza_dragon_a = calculaFuerzaBase(edad_dragon_a, 'a')
fuerza_dragon_b = calculaFuerzaBase(edad_dragon_b, 'b')

################## Entrenamiento ##################
for dia in range(1, 4):
    # Entrenamiento A
    
    if clasificacion_dragon_a == "Joven":
        fuerza_dragon_a += 2
        resistencia_dragon_a += 2
    elif clasificacion_dragon_a == "Adulto":
        fuerza_dragon_a += 1
        resistencia_dragon_a += 1
    else:
        fuerza_dragon_a += 1
        resistencia_dragon_a += 1
    
    # Entrenamiento B
    if clasificacion_dragon_b == "Joven":
        fuerza_dragon_b += 2
        resistencia_dragon_b += 2
    elif clasificacion_dragon_b == "Adulto":
        fuerza_dragon_b += 1
        resistencia_dragon_b += 1
    else:
        fuerza_dragon_b += 1
        resistencia_dragon_b += 1
    
    print('________________ Fin del día', dia,'________________')
    print('')
    print('El dragón A tiene', fuerza_dragon_a,' de fuerza y', resistencia_dragon_a,' de resistencia')
    print('El dragón B tiene', fuerza_dragon_b,' de fuerza y', resistencia_dragon_b,' de resistencia')
    print('_______________________________________________')
    print('')
    
################## Función Ataque ##################

def turnoDeAtaque (fuerza_dragon_ataca, resistencia_dragon_defensor, letra_dragon):
    '''
        turnoDeAtaque
        Entradas: Fuerza atacante, resistencia enemigo
        Salidas: Daño infligido 
    '''
    if letra_dragon == 'a':
        danyo_ataque_a = float(fuerza_dragon_a - (resistencia_dragon_b / 2))
        return danyo_ataque_a
        
    else:
        danyo_ataque_b = float(fuerza_dragon_b - (resistencia_dragon_a / 2))
        return danyo_ataque_b

########################### Batalla de los dragones ###########################

turno = 1
while vida_dragon_a > 0 or vida_dragon_b > 0:
    print('_____________ Turno', turno, '_____________')
    print('')
    
    print('--> Ataca', nombre_dragon_a)
    vida_dragon_b -= turnoDeAtaque(fuerza_dragon_a, resistencia_dragon_b, 'a')
    print('-->',nombre_dragon_a, 'le ha quitado', turnoDeAtaque (fuerza_dragon_a, resistencia_dragon_b, 'a'),'puntos de vida a', nombre_dragon_b)
    print('--> A', nombre_dragon_b, 'le quedan', vida_dragon_b,' puntos de vida')
    print('')
    
    print('--> Ataca', nombre_dragon_b)
    vida_dragon_a -= turnoDeAtaque(fuerza_dragon_b, resistencia_dragon_a, 'a')
    print('-->',nombre_dragon_b, 'le ha quitado', turnoDeAtaque (fuerza_dragon_b, resistencia_dragon_a, 'a'),'puntos de vida a', nombre_dragon_a)
    print('--> A', nombre_dragon_a, 'le quedan', vida_dragon_a,' puntos de vida')
    print('')
    
    turno += 1
    
if vida_dragon_a <= 0:
    print('_________________________________________________')
    print('')
    print('A ganado', nombre_dragon_a)
    print('_________________________________________________')
    print('')
else:
    print('_________________________________________________')
    print('')
    print('A ganado', nombre_dragon_b)
    print('_________________________________________________')
    print('')
```
