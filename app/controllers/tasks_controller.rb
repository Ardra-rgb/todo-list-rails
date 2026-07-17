class TasksController < ApplicationController

  def new
  end

  def create
    # render plain: params.inspect
    redirect_to '/dashboard/index'
  end

end 