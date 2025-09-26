Vamos a realizar un ejercicio el cual hagamos que se enfrenten dos dragones, primero pediremos los datos de los dragones, los clasificaremos en base a su edad y los pondremos a entrenar durante 3 días, este entrenamiento ira en base también de la edad del dragón.

Estos pelearan hasta que alguno tenga su vida a 0, estos comienzan 50 puntos de vida.

---

Para empezar pediremos datos como el nombre y la edad de cada dragón que lo pondrá el usuario e inicializaremos algunas variables que utilizaremos mas adelante, lo haremos de la siguiente manera:

```
nombre_dragon_a = input('Dime el nombre del dragón A: ')
edad_dragon_a = input('Dime la edad del dragón A: ')
    
clasificacion_dragon_a = ''
fuerza_dragon_a = 0
resistencia_dragon_a = 0
vida_dragon_a = 50
danyo_ataque_a = 0
```

Después nos aseguraremos de que la edad esta en números enteros con un simple `try`-`except`, de la siguiente forma:

```
try:
    edad_dragon_a = int(edad_dragon_a)
    
except:
    edad_dragon_a = 100
```

Ahora dependiendo de la edad lo clasificaremos en "Joven", "Adulto" y "Anciano", esto lo haremos con una estructura de control, es decir, usaremos `if`/`elif`/`else` de la siguiente manera:

```
if edad_dragon_a < 50:
    clasificacion_dragon_a = 'Joven'
    
elif edad_dragon_a >= 50 and edad_dragon_a < 200:
    clasificacion_dragon_a = 'Adulto'
    
else:
    clasificacion_dragon_a = 'Anciano'
```

Continuamos definiendo una función para calcular la fuerza base de los dragones, esto lo haremos en base a la edad del dragón de la siguiente forma:

```
def calculaFuerzaBase(edad, letra_dragon):

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
```

Ya tenemos la edad, el nombre, lo hemos clasificado y hemos hecho una función que nos da la fuerza base de los dragones, ahora necesitamos entrenarlos durante 3 días para esto utilizaremos un bucle `for`.

El entrenamiento se basa en la edad que tenga, dependiendo cuantos años tengan los dragones se incrementara mas o menos su fuerza y resistencia, para eso usaremos estructuras de control como los `if`/`elif`/`else` de la siguiente forma:

```
for dia in range(1, 4):
    
    if clasificacion_dragon_a == "Joven":
        fuerza_dragon_a += 2
        resistencia_dragon_a += 2
    elif clasificacion_dragon_a == "Adulto":
        fuerza_dragon_a += 1
        resistencia_dragon_a += 1
    else:
        fuerza_dragon_a += 1
        resistencia_dragon_a += 1
    
    if clasificacion_dragon_b == "Joven":
        fuerza_dragon_b += 2
        resistencia_dragon_b += 2
    elif clasificacion_dragon_b == "Adulto":
        fuerza_dragon_b += 1
        resistencia_dragon_b += 1
    else:
        fuerza_dragon_b += 1
        resistencia_dragon_b += 1
```

Ahora teniendo ya la fuerza, la resistencia entrenadas calcularemos cuanto daño hace el dragón por turno, para esto definiremos una función que se base en la fuerza del dragón que ataca y la resistencia del dragón que recibe el ataque, esto lo haremos de la siguiente manera:

```
def turnoDeAtaque (fuerza_dragon_ataca, resistencia_dragon_defensor, letra_dragon): 

    if letra_dragon == 'a':
        danyo_ataque_a = float(fuerza_dragon_a - (resistencia_dragon_b / 2))
        return danyo_ataque_a
        
    else:
        danyo_ataque_b = float(fuerza_dragon_b - (resistencia_dragon_a / 2))
        return danyo_ataque_b
```

Por ultimo vendría el enfrentamiento para ello usaremos un bucle `while`, este bucle estará activo hasta que uno de los dos dragones tenga la vida a 0.

Dentro del bucle en cada turno atacara primero el dragón A y después el dragón B, hasta que se quede alguno de los dos sin vida, de la siguiente manera:

```
turno = 1
while vida_dragon_a > 0 or vida_dragon_b > 0:
    print('_____________ Turno', turno, '_____________')
    
    print('--> Ataca', nombre_dragon_a)
    vida_dragon_b -= turnoDeAtaque(fuerza_dragon_a, resistencia_dragon_b, 'a')
    
    print('--> Ataca', nombre_dragon_b)
    vida_dragon_a -= turnoDeAtaque(fuerza_dragon_b, resistencia_dragon_a, 'b')
    
    turno += 1
```

Por ultimo aclarar que a lo largo del programa se usan `print` para ir informando de que pasa dentro del programa, comprobar que la edad y los nombres, que clasificación tienen los dragones, su fuerza su resistencia...

---

A continuación se muestra un ejemplo del ejercicio resuelto:

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
print('____________________________________________')
print('')
print('El dragón A es un',clasificacion_dragon_a)
print('____________________________________________')
print('')
    
if edad_dragon_b < 50:
    clasificacion_dragon_b = 'Joven'
    
elif edad_dragon_b >= 50 and edad_dragon_b < 200:
    clasificacion_dragon_b = 'Adulto'
    
else:
    clasificacion_dragon_b = 'Anciano'

print('____________________________________________')
print('')
print('El dragón B es un',clasificacion_dragon_b)
print('')

########################### Entrenamos al dragón ###########################

################## Función fuerzaBase ##################
def calculaFuerzaBase(edad, letra_dragon):
    '''
        calculaFuerzaBase
        Entrada: Edad del dragón, identificador
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
while vida_dragon_a > 0 and vida_dragon_b > 0:
    print('_____________ Turno', turno, '_____________')
    print('')
    
    print('--> Ataca', nombre_dragon_a)
    vida_dragon_b -= turnoDeAtaque(fuerza_dragon_a, resistencia_dragon_b, 'a')
    print('-->',nombre_dragon_a, 'le ha quitado', turnoDeAtaque (fuerza_dragon_a, resistencia_dragon_b, 'a'),'puntos de vida a', nombre_dragon_b)
    print('--> A', nombre_dragon_b, 'le quedan', vida_dragon_b,' puntos de vida')
    print('')
    
    print('--> Ataca', nombre_dragon_b)
    vida_dragon_a -= turnoDeAtaque(fuerza_dragon_b, resistencia_dragon_a, 'b')
    print('-->',nombre_dragon_b, 'le ha quitado', turnoDeAtaque (fuerza_dragon_b, resistencia_dragon_a, 'b  '),'puntos de vida a', nombre_dragon_a)
    print('--> A', nombre_dragon_a, 'le quedan', vida_dragon_a,' puntos de vida')
    print('')
    
    turno += 1
    
if vida_dragon_a > 0:
    print('_________________________________________________')
    print('')
    print('A ganado', nombre_dragon_a)
    print('_________________________________________________')
    print('')
    
elif vida_dragon_b > 0:
    print('_________________________________________________')
    print('')
    print('A ganado', nombre_dragon_a)
    print('_________________________________________________')
    print('')
    
else:
    print('_________________________________________________')
    print('')
    print('Se han derribado mutuamente')
    print('_________________________________________________')
    print('')
```

**Notas:**

- Tener cuidado con las condiciones dentro de los `if`/`elif`/`else`.
- Tener en cuenta que se debe poner un `return` dentro de las funciones para que devuelva lo que queremos
- Tener cuidado con las condiciones dentro del bucle `while` ya que el bucle se ejecutara mientra pase lo contrario a lo que queremos que pase antes de que se acabe, es decir, si quiero que se haga hasta que algo sea 0, la condición será mientras no sea 0
- Tener cuidado con el rango en los bucles `for` porqué el ultimo número deberá ser uno mas del cual queremos que llegue el rango

---

En conclusión hemos visto como usar los bucles `while` y `for` que aunque tienen la misma utilidad, la cual sería ahorrar lineas de código, se usan para cosas distintas.

También hemos visto la definición de funciones que nos ayuda ha hacer ciertas funciones, valga la redundancia, que sabemos hacer nosotros rápidamente el programa le costaría varias líneas, así es como definir una función nos ayuda ha hacer algo en una sola linea de código.

Esto podemos relacionarlo con simulacros anteriores ya que se utiliza todo lo aprendido en estos.
