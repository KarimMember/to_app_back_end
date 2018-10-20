class TodoController < ApplicationController
    def index
       
    end
    def show
        todo_id = params[:id]
        if todo_id == '1'
            @todo_description = "Do homework"
        
        elsif todo_id == '2'
            @todo_description = "Help mom"
            
        elsif todo_id == '3'
            @todo_description = "Play fortnite"
     end 
    end
end

