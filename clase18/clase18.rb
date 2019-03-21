require "sinatra"


get '/rocks' do
    "Hello World"
end

get '/nombre/:name' do
    "Ramiro #{:name}"
end