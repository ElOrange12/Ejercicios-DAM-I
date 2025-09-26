Vamos a realizar un ejercicio el cual sea una calculadora de IVA, esta la usaremos para sacar el precio con IVA de unas camisetas de fútbol.

---

Primero declaramos las variables que vamos a utilizar, esto lo haremos de la siguiente manera:

```
base_imponible = 0
total_iva = 0
total_factura = 0
```

Después preguntamos el precio inicial sin IVA y lo almacenamos en la variable `base_imponible` utilizando un `input` para que lo pueda introducir el usuario, esto lo haremos de la siguiente manera: 

```
base_imponible = input("Introduce la base imponible de la factura: ")
```

Ahora sabiendo el valor inicial, calcularemos el valor con el IVA añadido y el valor del añadido, esto lo haremos de la siguiente forma:

```
total_iva = float(base_imponible) * 0.21

total_factura = float(base_imponible) + total_iva
```

Por último mostraremos por pantalla el valor inicial, el valor del añadido y el valor final con el IVA añadido, esto lo haremos utilizando `print` de la siguiente manera:

```
print(f'Base Imponible: {base_imponible}')
print(f'Impuesto a Valor Agregado (IVA): {total_iva:.2f}')
print(f'Total Factura: {total_factura:.2f}')
```

---

A continuación se muestra un ejemplo de código del ejercicio resuelto:

```
'''
  Calculadora
  v1.0 Daniel Oliveira Vidal
  Calcula el impuesto de la venta de camisetas de una tienda.
'''

print("Programa calculadora de impuestos")
print("(c) 2025 Jose Vicente Carratalá")
print("Introduce una base y te calculo el IVA y el total")

# Creo variables
base_imponible = 0
total_iva = 0
total_factura = 0

base_imponible = input("Introduce la base imponible de la factura: ")

# Calculamos el IVA (asumiendo un 21%)
total_iva = float(base_imponible) * 0.21

# Calculamos el total general
total_factura = float(base_imponible) + total_iva

print(f'Base Imponible: {base_imponible}')
print(f'Impuesto a Valor Agregado (IVA): {total_iva:.2f}')
print(f'Total Factura: {total_factura:.2f}')
```

**Notas:**

- Hemos usado un `input` porqué si no es posible preguntarle al usuario, con lo que hemos aprendido hasta ahora
- Al calcular el IVA y el valor total hemos convertido la variable `base_imponible` a un numero decimal utilizando un `float`

---

Al ejecutar el programa poniendo el valor 20 de la siguiente forma:

```
Introduce la base imponible de la factura: 20
```

Sale como resultado lo siguiente: 

```
Base Imponible: 20
Impuesto a Valor Agregado (IVA): 4.20
Total Factura: 24.20
```

---

En conclusión hemos hecho el programa utilizando los conceptos aprendidos en los anteriores temas, como el uso de variables, uso de `print`, `input` o operadores aritméticos, este programa es importante a la hora de vender productos ya que se deben pagar unos impuesto sobre los productos que se comercializan.

Esto en el mundo del fútbol se puede ver en el ámbito de la venta de camisetas y el impuesto que se le añade.
