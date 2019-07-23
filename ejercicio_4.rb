#Se tienen dos arrays uno con el nombre de personas y otro con las edades,
#se pide generar un hashcon  el  nombre y  edad  de  cada  persona
# (se  asume que  no  existen dos  personas con  el  mismo nombre)

personas= ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades= [32, 28, 41, 19]

#Se pide generar un hash con la información:
personas_hash = personas.zip(edades).to_h

#Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado comoargumento.
def promedio_edades(hash)
  hash.values.sum / hash.length
end
