#Escribir un hash con el menu de un restaurant,
#la llave es el nombre del plato y el valor es el precio de este.

restaurant_menu = { "Ramen"=>3, "Dal Makhani"=>4, "Coffee"=>2 }

# 1. Obtener el plato mas caro.
prices = restaurant_menu.values
  max = prices.max
restaurant_menu.each{ |dish, price| puts dish if price == max }

# 2. Obtener el plato mas barato.
min = prices.min
restaurant_menu.each{ |dish, price| puts dish if price == min }

# 3. Sacar el promedio del valor de los platos.
average = prices.to_f / prices.length


# 4. Crear un arreglo con solo los nombres de los platos.
dishes = restaurant_menu.keys

# 5. Crear un arreglo con solo los valores de los platos.
prices = restaurant_menu.values

# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
restaurant_menu.each { |dish, price| restaurant_menu[dish] = price * 1.19 }


#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
restaurant_menu.each { |dish, price| restaurant_menu[dish] = price * 0.8 if dish.include? ' ' }
