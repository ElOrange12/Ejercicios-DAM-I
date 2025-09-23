```
'''
    Duelos de dragones
    v1.0 Daniel Oliveira Vidal
    
'''
########################### Preguntamos los datos ###########################

################## Dragón A ##################
nombre_dragon_a = input('Dime el nombre del dragón A: ')
print('El nombre del dragón A es', nombre_dragon_a)
edad_dragon_a = input('Dime la edad del dragón A: ')
print('La edad del dragón A es', edad_dragon_a)
clasificacion_dragon_a = ''
fuerza_dragon_a = 0
resistencia_dragon_a = 0
vida_dragon_a = 50
danyo_ataque_a = 0

################## Dragón B ##################
nombre_dragon_b = input('Dime el nombre del dragón B: ')
print('El nombre del dragón B es', nombre_dragon_b)
edad_dragon_b = input('Dime la edad del dragón B: ')
print('La edad del dragón B es', edad_dragon_b)
clasificacion_dragon_b = ''
fuerza_dragon_b = 0
resistencia_dragon_b = 0
vida_dragon_b = 50
danyo_ataque_b = 0

########################### Aseguramos que sean enteros ###########################

try:
    print('He convertido la edad A correctamente')
    edad_dragon_a = int(edad_dragon_a)
    
except:
    print('No he convertido la edad A correctamente')
    edad_dragon_a = 100
    
try:
    print('He convertido la edad B correctamente')
    edad_dragon_b = int(edad_dragon_b)
    
except:
    print('No he convertido la edad B correctamente')
    edad_dragon_b = 100
    
########################### Clasificamos los dragones ###########################

if edad_dragon_a < 50:
    clasificacion_dragon_a = 'Joven'
    
elif edad_dragon_a >= 50 and edad_dragon_a < 200:
    clasificacion_dragon_a = 'Adulto'
    
else:
    clasificacion_dragon_a = 'Anciano'
print('El dragón A es un',clasificacion_dragon_a)
    
if edad_dragon_a < 50:
    clasificacion_dragon_b = 'Joven'
    
elif edad_dragon_a >= 50 and edad_dragon_a < 200:
    clasificacion_dragon_b = 'Adulto'
    
else:
    clasificacion_dragon_b = 'Anciano'
print('El dragón B es un',clasificacion_dragon_b)

########################### Entrenamos al dragón ###########################

################## Función fuerzaBase ##################
def calculaFuerzaBase(edad, letra_dragon):
    '''
        calculaFuerzaBase
        Entrada: Edad del dragón
        Salida: Fuerza base en relación a la edad; Joven = 3, Adulto = 4, Anciano = 2 
    '''
    try:
        if letra_dragon == 'a':
            if edad_dragon_a < 50:
                fuerza_base_a = 3
        
            elif edad_dragon_a >= 50 and edad_dragon_a < 200:
                fuerza_base_a = 4
        
            else:
                fuerza_base_a = 2
        
            return fuerza_base_a
    
    except:
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
        
    print('Fin del día', dia)
    print('El dragón A tiene', fuerza_dragon_a,' de fuerza y', resistencia_dragon_a,' de resistencia')
    
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
    
    print('Fin del día', dia)
    print('El dragón B tiene', fuerza_dragon_b,' de fuerza y', resistencia_dragon_b,' de resistencia')
    
################## Función Ataque ##################

def turnoDeAtaque (fuerza_dragon_ataca, resistencia_dragon_defensor, letra_dragon):
    '''
        turnoDeAtaque
        Entradas: Fuerza atacante, resistencia enemigo
        Salidas: Daño infligido 
    '''
    try:
        if letra_dragon == 'a':
            danyo_ataque_a = fuerza_dragon_a - (resistencia_dragon_b / 2)
            return danyo_ataque_a
        
    except:
        danyo_ataque_b = fuerza_dragon_b - (resistencia_dragon_a / 2)
        return danyo_ataque_b

########################### Batalla de los dragones ###########################

turno = 1
while vida_dragon_a > 0 or vida_dragon_b > 0:
    print('------- Turno', turno, '-------')
    
    print('Ataca', nombre_dragon_a)
    vida_dragon_b -= turnoDeAtaque(fuerza_dragon_a, resistencia_dragon_b, 'a')
    print(nombre_dragon_a, 'le ha quitado', turnoDeAtaque (fuerza_dragon_a, resistencia_dragon_b, 'a'),'puntos de vida a', nombre_dragon_b)
    
    print('Ataca', nombre_dragon_b)
    vida_dragon_a -= turnoDeAtaque(fuerza_dragon_b, resistencia_dragon_a, 'a')
    print(nombre_dragon_b, 'le ha quitado', turnoDeAtaque (fuerza_dragon_b, resistencia_dragon_a, 'a'),'puntos de vida a', nombre_dragon_a)
    
    turno += 1
```
