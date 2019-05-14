class Api::V1::TasksController < ApplicationController
    def index
        @task = Task.all
        render json: @task.as_json()
    end
    
    def show
        @task = Task.find(params["id"].to_i)
        render json: @task.as_json()
    end
    
    def create
        @task = Task.new(task_params)
        @task.save
        render json: @task.as_json()
    end
    
    def destroy
    end
    
    def update  
    end

    private
    def task_params 
        params.require(:task).permit(:done, :description)
    end
      
end
