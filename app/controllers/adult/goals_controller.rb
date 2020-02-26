class Adult::GoalsController < ApplicationController

  def new
    raise
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to adult_user_path, notice: 'Goal was successfully created'
    else
      render :new
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :end_date, :total_points, :done)
  end
end
