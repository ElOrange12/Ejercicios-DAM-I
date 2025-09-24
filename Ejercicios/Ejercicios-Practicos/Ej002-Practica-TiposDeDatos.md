Vamos a realizar un ejercicio el cual pide la edad de un jugador y la duplica, este se asegura de que sea un número entero

---

Para empezar pedimos al usuario que no diga la edad del jugador y la guardaremos en una variable, lo haremos de la siguiente manera:

```
edad_jugador = input('Dime la edad del jugador: ')
```

Después de tener la edad la convertiremos a un número entero usando la función `int`, para eso lo haremos de la siguiente forma:

```
edad_jugador = int(edad_jugador)
```

Teniendo ya la edad en como un número entero la duplicamos, utilizando operadores aritméticos en este caso el `*` para multiplicarla por dos de la siguiente manera:

```
doble_edad = edad_jugador * 2
```

Por ultimo imprimimos por pantalla el doble de su edad utilizando un `print` de la siguiente manera:

```
print('El doble de la edad del jugador es', doble_edad)
```

---

A continuación se muestra un ejemplo de código del ejercicio resuelto:

```
'''
    Jugadores y edad
    v1.0 Daniel Oliveira Vidal
    Este programa pide la edad de un jugador, la duplica y la muestra por pantalla.
'''

edad_jugador = input('Dime la edad del jugador: ')

edad_jugador = int(edad_jugador)

doble_edad = edad_jugador * 2

print('El doble de la edad del jugador es', doble_edad)
```

**Notas:**
- Tener cuidado con cerrar todos los paréntesis o comillas que se abren en funciones como el `input` o el `int`

---

En conclusión hemos aprendido como utilizar la función `int` enlazando con el cambio de variables que vimos en el ejercicio anterior de cambio de variables

Este ejercicio puede ser aplicado en juego de futbol para calcular estadísticas de un jugador en base a su edad y como evoluciona con el tiempo.
