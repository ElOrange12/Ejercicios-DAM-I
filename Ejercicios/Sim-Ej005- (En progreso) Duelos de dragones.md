```
  '''
    Duelos de dragones
    v1.0 Daniel Oliveira Vidal
    Este programa pide la edad y el nombre de dos dragones y los hace entrenar y le atribuye unas estadistas en función de sus edades, después les hace pelear y da un ganador.
  '''
  ################## Preguntamos los datos ##################

  ######### Dragón A #########
  nombre_dragon_a = input('Dime el nombre del dragón A: ')
  print('El nombre del dragón A es', nombre_dragon_a)
  edad_dragon_a = input('Dime la edad del dragón A: ')
  print('La edad del dragón A es', edad_dragon_a)
  clasificacion_dragon_a = ''
  fuerza_dragon_a = 0
  resistencia_dragon_a = 0

  ######### Dragón B #########
  nombre_dragon_b = input('Dime el nombre del dragón B: ')
  print('El nombre del dragón B es', nombre_dragon_b)
  edad_dragon_b = input('Dime la edad del dragón B: ')
  print('La edad del dragón B es', edad_dragon_b)
  clasificacion_dragon_b = ''
  fuerza_dragon_b = 0
  resistencia_dragon_b = 0

  ################## Aseguramos que sean enteros ##################

  try:
      print('He convertido la edad A correctamente')
      edad_dragon_a = int(edad_dragon_a)
    
  except:
      print('No he convertido la edad A correctamente')
      edad_dragon_a = 100
    
  try:
      print('He convertido la edad B correctamente')
      edad_dragon_b = int(edad_dragon_b)
    
  except:
      print('No he convertido la edad B correctamente')
      edad_dragon_b = 100
    
  ################## Clasificamos los dragones ##################

  if edad_dragon_a < 50:
      clasificacion_dragon_a = 'Joven'
    
  elif edad_dragon_a >= 50 and edad_dragon_a < 200:
      clasificacion_dragon_a = 'Adulto'
    
  else:
      clasificacion_dragon_a = 'Anciano'
  print('El dragón A es un',clasificacion_dragon_a)
    
  if edad_dragon_a < 50:
      clasificacion_dragon_b = 'Joven'
    
  elif edad_dragon_a >= 50 and edad_dragon_a < 200:
      clasificacion_dragon_b = 'Adulto'
    
  else:
      clasificacion_dragon_b = 'Anciano'
  print('El dragón B es un',clasificacion_dragon_b)

  ################## Entrenamos al dragón ##################

  for dia in range(1, 4):
      # Entrenamiento A
      if clasificacion_dragon_a == "Joven":
          fuerza_dragon_a += 2
          resistencia_dragon_a += 2
      elif clasificacion_dragon_a == "Adulto":
          fuerza_dragon_a += 1
          resistencia_dragon_a += 1
      else:
          fuerza_dragon_a += 1
          resistencia_dragon_a += 1
        
      print('Fin del día', dia)
      print('El dragón A tiene', fuerza_dragon_a,' de fuerza y', resistencia_dragon_a,' de resistencia')
    
      # Entrenamiento B
      if clasificacion_dragon_b == "Joven":
          fuerza_dragon_b += 2
          resistencia_dragon_b += 2
      elif clasificacion_dragon_b == "Adulto":
          fuerza_dragon_b += 1
          resistencia_dragon_b += 1
      else:
          fuerza_dragon_b += 1
          resistencia_dragon_b += 1
    
      print('Fin del día', dia)
      print('El dragón B tiene', fuerza_dragon_b,' de fuerza y', resistencia_dragon_b,' de resistencia')
    
  ################## Batalla de dragones ##################
```
