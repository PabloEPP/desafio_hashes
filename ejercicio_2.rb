#Ejercicio 2
#Se tiene el siguiente hash

productos= {'bebida'=>850, 'chocolate'=>1200, 'galletas'=>900, 'leche'=>750}
#y se realiza la siguiente consulta para conocer los productos existentes:

#Productos.each { |valor, producto| putsproducto }

#Corrige el error:
#productos.each { |producto, valor| puts producto }

productos.each { |key, value| puts key }

#Nuevo Producto
productos['cereal'] = 2200

#Actualiza precio bebida
productos['bebida'] = 2000
puts productos

#Convertir hash en array
arr = productos.to_a

#Eliminar el producto galletas
productos.delete('galletas')
