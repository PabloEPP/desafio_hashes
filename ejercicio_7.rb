inventario = {Notebook: 4, Pc_escritorio: 6, Router: 10, Impresora: 6}
option = 1
while option >= 1 && option < 7 do
    puts "Seleccione una opción del menú:\n Ingrese 1 para agregar un nuevo artículo al stock\n Ingrese 2 para eliminar un artículo\n Ingrese 3 para actualizar información de artículo o de stock\n Ingrese 4 para ver stock total\n Ingrese 5 para ver el artículo con mayor stock\n Ingrese 6 para preguntar si un artículo está en stock\n Ingrese 7 para salir"
    option = gets.chomp.to_i
    arr_stock = []
    arr_ele = []
    if option == 1
        puts "el inventario actual es #{inventario}"
        puts 'Ingrese nuevo producto y su stock (Ejemplo: Pc_escritorio, 500)'
        input = gets.chomp.downcase.capitalize
        a = input.split(', ')
        inventario[a[0].to_sym] = a[1].to_i
        puts inventario
    elsif option == 2
        puts "el inventario actual es #{inventario}"
        puts 'Ingrese el nombre del ítem que quiere eliminar'
        input = gets.chomp.downcase.capitalize.to_sym
        inventario.delete(input)
        puts inventario
    elsif option == 3
        puts "el inventario actual es #{inventario}"
        puts '¿Desea editar el nombre de un artículo? (s/n)'
        input = gets.chomp.downcase
        if input == 's'
            puts 'Ingrese el nombre del artículo que desea editar'
            product = gets.chomp.downcase.capitalize.to_sym
            stock = inventario[product]
            if inventario.has_key?(product)
                puts 'Ingrese el nuevo nombre del producto'
                new_product = gets.chomp.downcase.capitalize.to_sym
                inventario[new_product] = stock
                inventario.delete(product)
                puts inventario
            else
                puts 'Ese producto no está en stock'
            end
        elsif input == 'n'
            puts '¿Desea editar el stock de un producto? (s/n)'
            input = gets.chomp.downcase
            if input == 's'
                puts 'Ingrese el nombre del artículo del que quiere editar el stock'
                product = gets.chomp.downcase.capitalize.to_sym
                if inventario.has_key?(product)
                    puts 'Ingrese el nuevo stock del producto'
                    new_stock = gets.chomp.to_i
                    inventario[product] = new_stock
                    puts inventario
                else
                    puts 'Ese producto no está en stock'
                end
            else
                puts 'De vuelta al menú principal'
            end
        else
            puts "Opción inválida\n De vuelta al menú principal"
        end

    elsif option == 4
        inventario.each_value do |value|
            arr_stock.push(value)
        end
        stock = arr_stock.inject {|x, n| x + n }
        puts "La cantidad total de ítemes en stock es de #{stock} artículos."
    elsif option == 5
        inventario.each do |ele, s|
            arr_stock.push(s)
            arr_ele.push(ele)
        end
        mayor = arr_stock.max
        indice_mayor = arr_stock.index(mayor)
        puts "El artículo con mayor stock es #{arr_ele[indice_mayor]}. Existen #{arr_stock.max} en stock"
    elsif option == 6
        puts "Ingrese el nombre del artículo del que quiere saber si hay o no stock"
        input = gets.chomp.downcase.capitalize.to_sym
        if inventario.has_key?(input) == true
            puts "Sí"
        else
            puts "No"
        end
    else
    end
end
