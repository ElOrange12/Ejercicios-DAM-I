Vamos a realizar un programa que muestre por pantalla la producción que se hace cada día en una fabrica siendo esa producción siempre 10 patos de goma, lo que tendremos que hacer es que cambie el día en que se producen de manera sencilla usaremos para esto usaremos un bucle `for`. 

---

Para empezar haremos una anidación de bucles `for` siendo el primero los años el segundo los meses y el tercero los días estos tendrán un rango cada uno siendo en los años los últimos 25 años, en los meses los 12 meses que hay y en los días aproximaremos a unos 30 días por mes, para poner el rango se debe sumar 1 al ultimo número del rango, todo esto se hace de la siguiente forma:

```
    for i in range(2000, 2026):
        for j in range(1, 13):
            for k in range(1, 31):
```

Los rangos harán que recorra todos los días que le hemos puesto y el hecho de sumarle uno al ultimo número es por que el ultimo número del rango no se muestra.

Por último para poder imprimir el mensaje utilizamos un `print` de esta manera:

```
    print('Día', k, 'del mes', j, 'del año', i,': 10 patitos de goma fabricados')
```

---

A continuación se muestra un ejemplo del código del ejercicio resuelto:

```
   '''
        Producción de patos
        v1.0 Daniel Oliveira Vidal
        Este programa muestra por pantalla la producción que hay cada día en un función
    '''

    for i in range(2000, 2026):
        for j in range(1, 13):
            for k in range(1, 31):
                print('Día', k, 'del mes', j, 'del año', i,': 10 patitos de goma fabricados') 
```

**Notas:**
- Tener cuidado a la hora de poner los rangos, el rango llega a un número menos del segundo número
- Tener cuidado con los sangrados y los dos puntos después de poner el bucle `for`
- Tener en cuenta el orden de la anidación

---

En conclusión hemos aprendido a utilizar los bucles `for` para poder economizar el código y tener un programa mas sencillo y limpio.
