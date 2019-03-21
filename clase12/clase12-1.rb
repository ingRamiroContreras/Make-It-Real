# clase Dice, me permite lanzar el dado con el metodo 
# rool_dice
class Dices
  def initialize
    @side = 1
  end
  def side
    @side
  end
  def roll_dice
    @side = 1 + rand(6)
  end
end

# clase Game, me permite interactuar con la clase
# Dice y generar diferentes funcionalidades tales como
# llamar a Dice.roll_dice para lanzar varios Dices y 
# guardar la suma de sus valores en @score

class Game
  def initialize(n_dices)
    @score = 0
    @dices = []
    n_dices.times do
      #dices = Dices.new
      @dices << Dices.new
    end
  end

  def roll_all_dices
    @dices.each do |dice|
      dice.roll_dice
    end
  end

  def calc_score
    @dices.each do |dice|
      @score += dice.side
    end
    @score
  end

  def score
    @score
  end

  def show_value
    @dices.each do |dice|
      puts dice.side
    end
  end

  def reset
    @score = 0
  end

end
 
# Pedimos al usuario la cantidad de rondas para 
# que cada jugador pueda lanzar
puts "cuantas rondas quieres jugar"
rondas = gets.chomp.to_i

# Se declara el has de usuarios que van a lanzar
# los Dices
jugadores = {}
jugadores["sandra"] = 0
jugadores["ricardo"] = 0
jugadores["beto"] = 0
jugadores["alejandra"] = 0

# valiables que van a guardar el score y
# el nombre del ganador.
score_ganador = 0
nombre_ganador = ""

# Se crea el objeto Game para empezar con 5 Dices
juego = Game.new(5)

# Se itera el has para que cada jugador lance los
# Dices las veces que quiera el usuario
jugadores.each do |key, value|
  rondas.times do
    juego.roll_all_dices
    juego.calc_score
  end
  jugadores[key] = juego.score
  juego.reset
end

# Se evaluan los score de cada jugador
# y sacamos el ganador
jugadores.each do |key, value|
  if score_ganador < value
    score_ganador = value
    nombre_ganador = key
  end
end

# se imprimen los resultados
p jugadores
puts "_________winner___________"
puts "el ganador es #{nombre_ganador} con un puntaje de #{score_ganador}"

  
  