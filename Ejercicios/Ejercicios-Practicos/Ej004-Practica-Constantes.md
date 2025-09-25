Vamos a realizar una programa el cual mediante una constante calcule el tiempo que tarda en caer un objeto desde una altura de 10, estas constantes nos ayudan a tener valores predefinidos para el calculo de las cosas que necesitemos, en este caso nos podría hacer falta una la constante gravedad para calcular como cae un balón de fútbol.

---

Primero declaramos la constante `GRAVEDAD`, esta la declararemos mediante una variable debido que en python no existe la distinción de variables y constantes, para declarar `GRAVEDAD` lo haremos de la siguiente manera:

```
GRAVEDAD = 9.8
```

Después declararemos otra variable para asignar la altura que se encontrara el objeto, en este caso 10, esto lo haremos de la siguiente manera:

```
altura = 10
```

Ahora para calcular el tiempo de la caída necesitaremos la función `sqrt` y `fact`, para usar `sqrt` lo exportaremos de la librería `math` de la siguiente manera:

```
from math import sqrt
```

Pero `fact` no existe en python, en python se utilizan el slash (`/`) para hacer divisiones por lo que es lo que utilizaremos, por lo tanto para calcular el tiempo que tarda en caer usaremos la función propuesta en el ejercicio pero modificada para que funcione en python de la siguiente manera:

```
tiempo_caida = sqrt(2*altura / GRAVEDAD)
```

Por ultimo imprimiremos el resultado en pantalla con un mensaje anunciándolo, esto lo haremos de la siguiente manera

```
print('El objeto caerá en', tiempo_caida)
```

---

A continuación se muestra un ejemplo de código del ejercicio resuelto:

```
'''
    Gravedad y Caida
    v1.0 Daniel Oliveira Vidal
    Este programa calcula cuanto tardaría un objeto en caer al suelo desde una altura de 10.
'''
from math import sqrt

# Estoy usando python no existe la distinción entre constantes y variables, lo pongo en mayúsculas para diferenciarlo
GRAVEDAD = 9.8

altura = 10

# No existe en ninguna función frac en ninguna librería de python, por lo que usaremos "/" para dividir
tiempo_caida = sqrt(2*altura / GRAVEDAD)

print('El objeto caerá en', tiempo_caida)
```

**Notas:**

- Para diferenciar variables de constantes, escribimos las constantes en mayúsculas y las variables en minúsculas
- Para usar funciones no predefinidas en python, hay que importarlas de alguna librería

---

En conclusión hemos visto la importancia de las constantes que nos ayudan a tener datos predefinidos con los cuales operar sin necesidad de repetir, esto es muy importante en videojuegos para tener valores predefinidos a mano y con un nombre fácil de usar.
