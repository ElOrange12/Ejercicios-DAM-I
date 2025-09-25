class Gato:
    def __init__(self):
        self.color = ''
        self.edad = 0
    def maulla(self):
        print('El gato está maullando')
    
jagger = Gato()
jagger.color = 'crema'
jagger.edad = 9
jagger.maulla()

lana = Gato()
lana.color = 'gris'
lana.edad = 11
lana.maulla()
