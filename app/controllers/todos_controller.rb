class TodosController < ApplicationController
  
  def new
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice] = "Todo was created successfully!"
      redirect_to todos_path(:id => @todo)
    else
      render 'new'
    end
  end
  
  def show
    @todo = Todo.find(params[:id])
  end
  
  private
    def todo_params
      params.require(:todo).permit(:name, :description)
    end
  
end