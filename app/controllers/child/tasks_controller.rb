class Child::TasksController < Child::ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @category = Category.find(params[:category_id])
    @task.category = @task
      if @task.save
        redirect_to child_user_path(current_user)
      else
        render :new
    end
  end

  private

  def review_params
    params.require(:task).permit(:name, :description, :category_id)
  end
end
