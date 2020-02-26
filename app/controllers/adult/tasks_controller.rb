class Adult::TasksController < ApplicationController


private

def task_params
  params.require(:task).permit(:name, :description, :points, :photo)
end
end
