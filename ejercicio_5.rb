#Dados los siguientes array:

meses= ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas= [2000, 3000, 1000, 5000, 4000]

h = meses.zip(ventas).to_h

#Invertir las llaves y los valores del hash.
h = h.invert

#Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
max = h.keys.max
