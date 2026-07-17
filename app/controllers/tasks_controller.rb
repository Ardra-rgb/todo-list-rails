class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to "/dashboard/index"
    else
      render :new
    end
  end
def destroy
  task = Task.find(params[:id])
  task.destroy

  redirect_to "/dashboard/index"
end


def toggle
  task = Task.find(params[:id])
  task.update(completed: !task.completed)

  redirect_to "/dashboard/index"
end


  private

  def task_params
    params.require(:task).permit(:title, :description)
  end

end