estudiantes = ["andrea","juliana","camila","johana","paola","mayra"]

p estudiantes

estudiantes.each_with_index do |estudiante, index|
    puts index % 2 == 0 ? "estudiante numero #{index} su nombre es #{estudiante}": nil
    puts "estudiante numero #{index} su nombre es #{estudiante}" if index % 2 == 0  
end