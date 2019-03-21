# Esta es la forma en que se crean errores personalizados
class NoOrangesError < StandardError
end

class OrangeTree
  attr_reader :height, :age

  # Envejeze el arbol
def initialize
  @oranges = []
  @age = 0
  @height = 0
end

  def age!
    @age += 1
    @height += 1 if (@age < 8)
    self.new_oranges? if (@age >= 2)
  end

  def dead?
    (@age >= 20) ? true : false
  end

  def new_oranges?
    quantity = 1 + rand(10)
    quantity.times do
      @oranges << Orange.new(1 + rand(5))
    end

  end

  # Devuelve true si hay naranjas en el arbol, false si no
  def any_oranges?
    if @oranges.length > 0 # error
      return true
    end
     return false
  end

  # Devuelve una naranja si hay una
  # Dispara un NoOrangesError de lo contrario
  def pick_an_orange!

    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    @oranges.shift
    # Logica para sacar naranjas va aca
  end
end

class Orange
  # Crea una naranja con determinado +diameter+
  attr_accessor :diameter # error

  def initialize(diameter)
    self.diameter = diameter # error
  end
end


######## DRIVER CODE ###########

tree = OrangeTree.new
tree.age! until tree.any_oranges?

puts "El arbol tiene #{tree.age} años y mide #{tree.height} metros"

until tree.dead?
  basket = []
  # Pone las naranjas en la canasta
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end


  avg_diameter = basket.map { |orange| orange.diameter}
  avg_diameter = avg_diameter.reduce(:+) / basket.length
  puts "Reposte Año #{tree.age}"
  puts "Altura arbol: #{tree.height} metros"
  puts "Cosecha: #{basket.size} naranjas con un diametro promedio de #{avg_diameter} cm"
  puts ""

  # Envejeze el arbol en 1 año
  #
  tree.age!
end

puts "Miercoles, se murio el arbol!"

#reduce, map, reduce, filter