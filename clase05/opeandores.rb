puts "digite un numero para saber si es par o no"
a = gets.chomp.to_i
b = gets.chomp.to_i

#puts a*b
puts "el numero #{a} es mayor a #{b}" if (a > b)
puts "el numero #{b} es mayor a #{a}" if (a < b)
puts "los numeros #{b} y #{a} son iguales" if (a == b)


if nil
    puts "true"
else
    puts "false"
end

#if (edad % 2 == 0)
#    puts "el numero #{edad} es par"
#else 
#    puts "el numero #{edad} no es par"
#end

# crear programa n esta entre 5 y 10