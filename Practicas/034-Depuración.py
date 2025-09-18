def hazDivision (dividendo, divisor):
    # Comprobamos si son números
    print('Entramos en la función')
    if isinstance(dividendo, (int, float, complex)) and isinstance(divisor, (int, float, complex)):
        print('Parece que los parámetros son números')
        # Comprobamos que el divisor no es cero
        if divisor != 0:
            print('Parece que los puedo dividir')
            resultado = dividendo/divisor
            return resultado
        else:
            print('No puedo dividir porque el divisor es cero')
            resultado = 0
    else:
        print('Los parámetros no son números, pero voy a intentar convertirlos')
        try:
            print('Intento convertir a números con éxito')
            # Vamos a intentar convertirlo a números
            dividendo = float(dividendo)
            divisor = float(divisot)
            resultado = dividendo/divisor
            return resultado
        except:
            print('He intentado convertir a números, pero no he podido')
            return 0

print(hazDivision(4, '3'))
