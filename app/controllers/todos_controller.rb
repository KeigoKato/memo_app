class TodosController < ApplicationController

  def index
    @todo = Todo.new
    @todos = Todo.order("created_at DESC")
  end

  def create
    @todo = Todo.new(toso_params)
    if @todo.save
      redirect_to :root
    else
      render :index, alert: "Todoを入力してください"
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:content)
  end

end
