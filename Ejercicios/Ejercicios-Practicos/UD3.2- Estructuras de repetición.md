El bucle `for` es función muy útil de repetición que nos ayuda ha hacer repeticiones valga la redundancia dentro de rangos, esto es un ahorro a la hora de escribir código.

Por lo que vamos a realizar una practica para probar la función.

Esto puede ser util en mis hobbies a la hora de contar los días que falta para un partido, que salga un juego o algo parecido

---

Para empezar haremos un primer bucle `for` que sera el de los días, de la siguiente forma:

```
for i in range(1, 31):
```

Este va desde el 1 al 30 lo que pasa es que el ultimo número el rango no lo lee, por lo que tenemos que poner un número mas

Los siguiente dos bucles `for` serán exactamente iguales pero cambiando el rango, en el de meses de 1 al 12 y en el de años de 1978 a 2025 siguiendo lo que hemos dicho acerca del rango antes, lo único diferente es que el bucle de los meses irá anidado dentro del bucle de los días y el bucle de los años irá dentro del de los meses, es decir de esta forma:

```
for i in range(1, 31):
    for j in range(1, 13): 
        for k in range(1978, 2026):
```


Por último he añadido un `print dentro de los bucles para que se ejecuten los bucles `for`, sino estos no se ejecutar, esto lo he hecho de la siguiente forma

```
print('Día', i, 'del mes', j, 'del año', i, 'se han hecho 10 patos')
```

---

A continuación se muestra un ejemplo del código del ejercicio resuelto 

```
'''
    Días de patos
    v1.0 Daniel Oliveira Vidal
    Este programa dice cuantos patos se han hecho en un día.
'''

for i in range(1, 31): # Este "for" cuenta los días
    for j in range(1, 13): # Este "for" cuenta los meses
        for k in range(1978, 2026): # Este "for" cuenta los años 
            print('Día', i, 'del mes', j, 'del año', i, 'se han hecho 10 patos')
```

**Notas:**

- Los bucles `for deben ir anidados necesariamente para que actúen entre ellos
- Si dentro del bucle `for` no se añade nada este no se ejecutará

---

En conclusión este bucle en una forma de hacer buenas practicas y ahora código el cual me ayuda a tener programas mas limpios y sencillos los cuales puedan ser entendidos por cualquiera que lea el código.
