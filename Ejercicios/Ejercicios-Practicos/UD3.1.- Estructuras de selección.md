Las estructuras de selección ayudan, mediante condiciones, a clasificar y ordenar datos, estas mediante las variables y sus literales funcionan como un filtro. 

En el ámbito del fútbol el clasificar por edad podría ser útil a la hora de clasificar a los jugadores en sus respectivas categorías.

Es entonces cuando nos proponen un ejercicio de clasificar jugadores de fútbol según su edad, siendo 10 un niño, entre 10 y 19 un adolescente, entre 20 y 29 un joven y mayor de 30 ya no es joven.

---

Primero declararemos una variable para guardar la edad y asignaremos el valor que nos da el ejercicio, esto lo realizaremos de la siguiente manera:

```
edad_jugador = 25
```

A continuación haremos la clasificación utilizando las estructuras de control `if`/`elif`/`else`, en estas añadiremos las condiciones que el ejercicio propone de la siguiente forma:

```
if edad_jugador < 10:
```

```
elif edad_jugador >= 10 and edad_jugador < 20:
```

```
elif edad_jugador >= 20 and edad_jugador < 30:
```

```
else:
```

Por ultimo al ya estar clasificado, dentro de cada condición habrá un `print` el cual mostrará que es según su edad, esto lo hará mediante la siguiente manera:

```
print('Es un niño')
```

---

A continuación se muestra un ejemplo de código del ejercicio resuelto:

```
'''
    Clasificatoria Edad
    v1.0 Daniel Oliveira Vidal
    Este programa clasifica en niño, adolescente, joven o no joven a jugadores según su edad
'''

edad_jugador = 25

if edad_jugador < 10:
    print('Es un niño')
    
elif edad_jugador >= 10 and edad_jugador < 20:
    print('Es un adolescente')
    
elif edad_jugador >= 20 and edad_jugador < 30:
    print('Es un joven')
    
else:
    print('Ya no eres joven')
```

**Notas:**

- Poner dos puntos después de una estructura `if`/`elif`/`else` además que la siguiente linea deberá ir sangrado para que se ejecute dentro del if

---

En conclusión vemos como las estructuras de control nos sirven de gran ayuda para ahora memoria y rendimiento, debido a que al ser ejecutado uno los demás no se ejecutan por lo que el programa tiene un mejor rendimiento.

En relación con la materia hemos visto como utilizamos los `print` y las variables como vimos anteriormente.
