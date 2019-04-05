require "sinatra"
require "./models/student"

students = []


get "/students" do
    p params
    @students = students
    #@students << Student.new('ramiro','contreras')
    erb :index
end

get "/students/new" do
    #@students << Student.new(params[:name],params[:lasName])
    erb :studentnew
end

post "/students" do
    p params
    students << Student.new(params[:name], params[:lastName])
    @students = students
    erb :index
end

delete  "/students/delete" do
    students.delete_at(params[:id].to_i)
    @students = students
    erb :index
end

get "/students/modify/:id" do
    @student = students[params[:id].to_i]
    @id = params[:id]
    erb :editstudent
end

patch "/students" do
   students[params[:id].to_i] = Student.new(params[:name], params[:lastName])
   @students = students
   erb :index
end