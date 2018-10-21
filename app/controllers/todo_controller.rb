class TodoController < ApplicationController
     $todos = ["DO Homework", "Help Mom", "Play Fortnite"]
     
     
    def index
       
    end
    def show
        todo_id = params[:id]
        #get the row with that id
        @todo = Todo.find_by_id(params[:id])
        
        #Set the descriotion
    #     if todo_id == '1'
    #         @todo_description = "Do homework"
        
    #     elsif todo_id == '2'
    #         @todo_description = "Help mom"
            
    #     elsif todo_id == '3'
    #         @todo_description = "Play fortnite"
    end 
    def create
        t = Todo.new
        t.description = params['description']
        t.added_ = DateTime.now
        t.save
        
        redirect_to "/todo/show/#{t.id}"
      
    end
    
    def edit
        @todo=Todo.find_by_id(params[:id])
    end
    
    def update
        t= Todo.find_by_id(params[:id])
        t.description = params['description']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
end
