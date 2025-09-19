Vamos a realizar un programa que clasifique al usuario en una categoría de baloncesto dependiendo de la edad que tenga, entonces le mostraremos que edad tiene y en la categoría que se encuentra además que si sobre pasa los 40 años se le alagara diciendo que tiene experiencia.

---

Para empezar deberemos preguntarle la edad al usuario, de la siguiente forma:

```
    edad = int(input('Dime tu edad: '))
```

Con el valor dado de la edad utilizaremos las estructuras de control `if`/`elif`/`else` para poder saber en que categoría se encuentra, lo que conseguimos así es no ejecutar todo el código para ahorrar rendimiento en el programa esto lo conseguimos de las siguientes formas:

```
    if edad < 8:
        categoria = 'pre-mini'
```
```
    elif edad >= 8 and edad < 12:
        categoria = 'mini'
```
```
    else:
        categoria = 'senior'
```

Después de conseguir en que categoría se encuentra se le muestra al usuario la edad que nos proporciono y la categoría que corresponde a esa edad, esto lo haremos mediante un `print` de la siguiente forma:

```
    print('Tu edad es de', edad,'entonces estas en la categoría', categoria)
```

Y por ultimo si el usuario sobrepasa la edad de 40 se le alaga mostrando que tiene experiencia en el juego, exactamente igual que lo anterior.

---

A continuación se muestra un ejemplo del código del ejercicio resuelto:

```
'''
    Baloncesto y categorías
    v0.1 Daniel Oliveira Vidal
    Este programa te dice en que categoría de baloncesto en la que estas dependiendo de tu edad
'''
# Preguntamos la edad en números enteros
edad = int(input('Dime tu edad: '))

# Utilizamos las estructuras de control if/elif/else para saber en que categoría se encuentra el usuario
if edad < 8:
    categoria = 'pre-mini'
    
elif edad >= 8 and edad < 12:
    categoria = 'mini'
    
elif edad >= 12 and edad < 16:
    categoria = 'infantil'
    
elif edad >= 16 and edad < 18:
    categoria = 'cadete'
    
elif edad >= 18 and edad < 20:
    categoria = 'junior'
    
else:
    categoria = 'senior'

# Mostramos por pantalla la edad del usuario y su categoría
print('Tu edad es de', edad,'entonces estas en la categoría', categoria)

# Además si el jugador sobre pasa los 40 mostramos por pantalla lo siguiente:
if edad > 40:
    print('Además eres un veterano con experiencia en la cancha')
```

**Notas**

- Tener en cuenta que la variable de edad debe ser un número entero usando la función `int`.
- Cuidado con el sangrado después de las condiciones del `if`/`elif`/`else`.

---

Como hemos visto las estructuras de control `if`/`elif`/`else` nos ayudan a identificar cosas en base a las condiciones que les damos proporcionando un mejor rendimiento al programa.
