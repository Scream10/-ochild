class Kid::TasksController < ApplicationController
  def new
    @task = Task.new()
  end

  def create
    @task = Task.new(task_params)
      if @task.save
        redirect_to kid_user_path(current_user)
      else
        render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :photo, :category_id)
  end
end
