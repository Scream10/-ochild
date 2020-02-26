class Kid::AchievementsController < ApplicationController
  def new
    @achievement = Achievement.new()
  end

  def create
    @achievement = Achievement.new(achievement_params)
    @achievement.user = current_user
    if @achievement.save
      redirect_to kid_user_path(current_user)
    else
      render :new
    end
  end

  private

  def achievement_params
    params.require(:achievement).permit(:due_at, :task_id, :user_id, :achieve, :done, :points)
  end
end
