class todosController < ApplicationController
  def index
    @todo = Todo.all
  end

   def new
  end

  def create
    # get the info from params
    name = params[:name]
    # make a new todo object
    todo = todo.new
    # store the info in the new todo object
    todo.name = name
    # save the todo to db
    todo.save
    # redirect to index
    redirect_to '/todos'
  end

  def show
    @todo = todo.find(params[:id])
  end

  def edit
    @todo = todo.find(params[:id])
  end

  def update
    todo = todo.find(params[:id])
    todo.name = params[:name]
    todo.save
    redirect_to "/todos/#{todo.id}"
  end

  def destroy
    todo = todo.find(params[:id])
    todo.destroy
    redirect_to('/todos')
  end
end

