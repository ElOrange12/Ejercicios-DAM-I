Vamos a realizar un ejercicio el cual pide el nombre del videojuego favorito del usuario y la valoración que le atribuye entonces el programa muestra por pantalla el nombre del videojuego y el doble de su puntuación.

---

Para empezar necesitamos preguntarle al usuario su videojuego favorito y almacenarlo en una variable, por ejemplo de esta forma:

```
    juego = input('Cuál es tu videojuego favorito: ')
```

Después le preguntaremos la valoración que le atribuye a ese juego de la misma manera que con el videojuego.

Como bien propone el ejercicio deberemos transformar la valoración a un número entero por lo que lo guardaremos en otra variable de la siguiente forma:

```
    entero = int(valoracion)
```

Por ultimo debe mostrar por pantalla cual es el videojuego favorito y el doble de la valoración que le a atribuido, de la siguiente manera:

```
    print('Tu videojuego favorito es', juego, 'y el doble de la puntuación es', entero*2)
```
---

A continuación se muestra un ejemplo del código del ejercicio resuelto:

```
    '''
    Juegos y Valoración
    v1.0 Daniel Oliveira Vidal
    Este programa pide un videojuego una puntuación de ese juego y muestra por pantalla el nombre del juego y el doble de su puntuación. 
    '''
    
    juego = input('Cuál es tu videojuego favorito: ')
    valoracion = input('Qué puntuación le das al juego: ')

    entero = int(valoracion)

    print('Tu videojuego favorito es', juego, 'y el doble de la puntuación es', entero*2)
```

**Notas:**

- Tener cuidado con las comillas abiertas y cerradas a la hora de añadir las variables en la función `print`.

---

Como hemos visto la función `int` funciona para convertir una cadena de caracteres a un número entero pudiendo así operar con él.
