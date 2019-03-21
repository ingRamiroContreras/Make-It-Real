require "sinatra"


get '/rocks' do
    "Hello World"
end

get '/nombre/:name' do
    "Ramiro #{:name}"
end

get '/nombreWeb/:name' do
    @name = params[:name]
    erb :index
end

get '/' do
    "Hi welcome to Pets App"
end

get '/dog/:name' do
    @name = params[:name]
    @animal = "dog"
    erb :index
end

get '/cat/:name' do
    @name = params[:name]
    @animal = "cat"
    erb :index
end