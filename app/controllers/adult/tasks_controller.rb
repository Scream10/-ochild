class Adult::TasksController < Adult::ApplicationController


private

def task_params
  params.require(:task).permit(:name, :description, :points, :photo)
end
end
