personas = {nombre: "Nora", edad: 30, casado: "no"}
p personas

personas[:empresas] = ["Oracle","Sun","Yahoo","Google","Amazon"]
p personas

#personas[:programas] = ["Java","Ryby","TypeScrip","JavaScrip","Angular"]-
#p personas
personas[:programas1] = "Java"
personas[:programas2] = "Ryby"
personas[:programas3] = "TypeScrip"
personas[:programas4] = "JavaScript"
personas[:programas5] = "Angular"

personas[:peso] = 0
p personas

personas[:color_de_ojos] = "Azules"
p personas

personas[:nombre_de_hijos] = ["Angelica", "Andrea", "Emilio"]
p personas

personas[:peso] = 80
p personas

personas.delete(:programas3)
p personas
puts "--------------------------------------"
personas.each { |element| p element}

