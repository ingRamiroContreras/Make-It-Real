class Dado

   def initialize
    @cara = 1
   end

   def tirarDado
    @cara = 1 + rand(6)

   end

   def cara
      return @cara  
   end

end


class Game

    def initialize(cantidad)
        
    end
 
end

dado1 = Dado.new()
dado1.tirarDado()
p dado1.cara()
dado1.tirarDado()
p dado1.cara()
dado1.tirarDado()
p dado1.cara()