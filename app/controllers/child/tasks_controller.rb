class Child::TasksController < Child::ApplicationController
  def new

  end

  def create
    @task = Task.new(task_params)
      if @task.save
        redirect_to child_user_path(current_user)
      else
        render :new
    end
  end
end
