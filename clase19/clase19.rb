require "sinatra"
require_relative "./models/libro"

get '/' do
    p Libro.getLibro
    @libros = Libro.getLibro
    erb :index
end

get '/crear_libros' do
    erb :crearlibro
end

post '/crear_libros' do
    p params
    Libro.new(params[:nombreLibro],params[:nombreAutor])
    erb :crearlibro
end

get '/reset' do
    p Libro.resetLibro
    @libros = Libro.getLibro
    erb :index
end