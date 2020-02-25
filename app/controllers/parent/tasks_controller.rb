class Parent::TasksController < Parent::BaseController


private

def task_params
  params.require(:task).permit(:name, :description, :points, :photo)
end
end
