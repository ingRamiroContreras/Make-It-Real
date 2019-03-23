class Libro
    attr_accessor :nombre, :autor

    @@libros = []

    def initialize(nombre, autor)
        self.nombre = nombre
        self.autor = autor
        self.creaLibro
    end

    def creaLibro
        p @@libros
        @@libros << self
    end

    def self.getLibro
        @@libros 
    end

    def self.resetLibro
        @@libros = []
    end

end