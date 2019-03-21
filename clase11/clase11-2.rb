class Carro

    def initialize(marca,placa,color,modelo)
        @marca = marca
        @placa = placa
        @color = color
        @modelo = modelo
        @velocidad = 0
        @sentido = 1
    end

#    def initialize
#        @velocidad = 0
#        @sentido = 1
#    end


    def arranca(sentido)
        @velocidad = 10
        @sentido = sentido
    end

    def acelera
        @velocidad += 1
    end

    def frena
        @velocidad = 0
    end

    def cambia_sentido(sentido)
        puts @velocidad == 0? @sentido = sentido: " para el coche"  
    end

end

p carro = Carro.new("Mazda","HKW765","rojo",2019)
p carro.arranca(-1)
p carro.acelera()
p carro.acelera()
p carro.acelera()
p carro.acelera()
p carro.frena()
p carro.cambia_sentido(1)
