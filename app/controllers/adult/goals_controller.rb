class Adult::GoalsController < ApplicationController

  def new
    @categories = Category.all
    @goal = Goal.new
    @kids = current_user.kids
  end

  def create
    @goal = Goal.new(goal_params)
    raise
    if @goal.save
      redirect_to adult_user_path(current_user), notice: 'Goal was successfully created'
    else
      @kids = current_user.kids
      render :new
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :end_date, :total_points, :done, :user_id, proportions_attributes: [:id, :category_id, :percent])
  end
end
