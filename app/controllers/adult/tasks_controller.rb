class Adult::TasksController < ApplicationController

  def new
    @task = Task.new()
  end

  def create
    @task = Task.new(task_params)
    # @task.achievement = @achievment
    if @task.save
      respond_to do |format|
        format.html { redirect_to adult_user_path(current_user) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'users/show' }
        format.js  # <-- idem
      end
    end
  end

private

  def task_params
    params.require(:task).permit(:name, :description, :category_id)
  end
end
