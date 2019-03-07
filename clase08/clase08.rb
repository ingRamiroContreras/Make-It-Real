
estudiantes = [1,2,3,4,5,6]

n = estudiantes.length
p n
estudiantes[3] << 8
p estudiantes

n.times do |i|
    puts estudiantes[i]
end

estudiantes.each do |estudiante, index|
    puts estudiante + " #{index}"
end