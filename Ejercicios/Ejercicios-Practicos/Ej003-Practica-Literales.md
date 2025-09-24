Vamos a realizar un ejercicio en el cual declaremos unas variables, le ponga un literal y muestre una cadena con las variables formateada, este tiene relación con mis gustos ya que hablamos de un jugador de videojuegos.

---

En primer lugar declaramos las variables `nombre_jugador` y `edad_jugador`, estas las declaramos de la siguiente manera:

```
nombre_jugador = ''
edad_jugador = 0
```

La primera variable se declara con una cadena vacía porqué en esta le pondremos un literal con el nombre del jugador, debido que este es una cadena, y en la otra se le pone un 0 debido a que vamos a poner la edad, que es un número.

Después de cambiar los literales de las variables haremos un `print` para imprimir la cadena, después para formatearla usaremos un `format` todo de la siguiente manera:

```
print('El jugador {0} tiene una edad de {1:.0f} años'.format(nombre_jugador, edad_jugador))
```

---

A continuación se muestra un ejemplo de código del ejercicio resuelto:

```
'''
    Jugador de Videojuegos
    v1.0 Daniel Oliveira Vidal
    El programa muestra por pantalla el nombre del jugador y su edad en una cadena formateada
'''
nombre_jugador = ''
edad_jugador = 0

nombre_jugador = 'BenjyFishy'
edad_jugador = 21

print('El jugador {0} tiene una edad de {1:.0f} años'.format(nombre_jugador, edad_jugador))
```

**Notas:**

- Tener cuidado con el doble paréntesis después de usar un `format` ya que se junta con el del `print`

---

En conclusión hemos aprendido que son los literales en una variable y como formatear una cadena de texto antes de imprimirla por pantalla.

Esto viene en relación a como a la hora de enseñar algo por pantalla salga como queremos y así no haya confusión o algún problema de lectura.
