Vamos a realizar un programa que defina una función que realice una raíz cuadrada, dentro de la función analizaremos si el `input` recibido es el adecuado para poder calcular dicha raíz si no el programa responderá con el resultado 0.

---

Para comenzar definiremos la función de la siguiente manera:

```
    def raizCuadrada (radicando):
```

Para poder hacer la raíz cuadrada deberemos importar de la librería `math` la función sqrt la encargada de hacer la raíz, la importaremos tal que así:

```
    from math import sqrt
```

Ahora para calcular la raíz deberemos saber si el radicando es un número (`int`, `float` o `complex`) para ello pondremos unas condiciones utilizando las estructuras de control `if` y `else`, de la siguiente forma:

```
    if isinstance(radicando, (int, float, complex)):
```

En el caso de no ser un número y ser una cadena de caracteres el programa intentara transformarlo en un número, dentro del `else` lo haremos de la siguiente forma:

```
    else:
        try:
            radicando = float(radicando)
            resultado = sqrt(radicando)
            return resultado
        except:
            return 0
```

Si el `input` recibido es numérico el programa utilizando de nuevo las estructuras de control `if` y `else` para comprobar si el número es negativo, de la siguiente forma:

```
    if radicando >= 0:
            resultado = sqrt(radicando)
            return resultado
        else:
            return 0
```

Entonces ya estaría la función desarrollada.

Ahora en otro archivo podemos hacer un ejemplo de como se exportaría, este archivo lo llamaremos _main.py_, lo haremos usando un `import` y poniendo el nombre del archibo en el que esta guardada la función de la siguiente manera:

```
    from funcionRaizcuadrada import raizCuadrada
```
Por ultimo podemos comprobar distintos casos usando `print` dentro del programa con un comando simple como:

```
    print(raizCuadrada(4))
```

---

A continuación se muestra un ejemplo del código del ejercicio resuelto:

- _main.py_
```
    '''
        main
        v1.0 Daniel Oliveira Vidal
        Este programa importa y prueba una función
    '''
    from funcionRaizcuadrada import raizCuadrada

    print(raizCuadrada('a'))
    print(raizCuadrada('4'))
    print(raizCuadrada(-1))
    print(raizCuadrada(4))
```
- _funcionRaizcuadrada.py_
```
    def raizCuadrada (radicando):
        '''
            Función de raíz cuadrada
            v1.0 Daniel Oliveira Vidal
            Entradas: radicando que se espera que sea numérico
            Salidas: resultado de la raíz cuadrada como número (o cero si es fallo)
            Capturas de error:
             1.-Si es numérico
             2.-Si se puedo convertir a numérico
             3.-Si el número es negativo
        '''
        # Importamos de la librería "math" la función "sqrt" para poder calcular raíces.
        from math import sqrt
        # Comprobamos si es un número.
        print('Entramos en la función')
        if isinstance(radicando, (int, float, complex)):
            print('Parece que el parámetro es un número')
            if radicando >= 0:
                print('Parece que el se puede hacer la raíz de número')
                resultado = sqrt(radicando)
                return resultado
            else:
                print('No puedo hacer la raíz del número por que es negativo')
                return 0
        else:
            print('El parámetro no es un número, voy a intentar convertirlo') 
            try:
                print('Convierto a números con éxito')
                #Vamos a intentar convertirlo a un número.
                radicando = float(radicando)
                resultado = sqrt(radicando)
                return resultado
            except:
                print('He intentado convertir a números, pero no he podido')
                return 0
```

**Notas:**
- Añadir un "DocString" dentro de la función para saber que cosas entran salen y que problemas soluciona
- Añadir `print` en cada acción para hacer una depuración adecuada
- Las funciones deben ir escritas en camellCase

---

En conclusión hemos visto como desarrollar un función la cual podemos utilizar cuando queramos sin necesidad de reescribir toda la función completa y así hacer el trabajo de programación mas ameno y limpio.
