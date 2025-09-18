def hazDivision (dividendo, divisor):
    # Comprobamos si son números
    if isinstance(dividendo, (int, float, coplex)) and isinstance(divisor, (int, float, complex)):
        # Comprobamos que el divisor no es cero
        if divisor != 0:
            resultado = dividendo/divisor
            return resultado
        else:
            resultado = 0
    else:
        try:
            # Vamos a intentar convertirlo a números
            dividendo = float(dividendo)
            divisor = float(divisot)
            resultado = dividendo/divisor
        except:
            return 0
    
print(hazDivision(4, '3'))
