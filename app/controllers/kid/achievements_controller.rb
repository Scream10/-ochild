class Kid::AchievementsController < ApplicationController
  def new
    @achievement = Achievement.new()
    @user = User.find(params[:user_id])
  end

  def create
    @achievement = Achievement.new(achievement_params)
  end

  def edit
    @achievement = Achievement.find(params[:id])
  end

  def update
    @achievement = Achievement.find(params[:id])
    @kid = @achievement.user
    @achievement.update(achievement_params)

    redirect_to kid_user_path(current_user)
  end

  private

  def achievement_params
    params.require(:achievement).permit(:due_at, :achieve, :done, :task_id, :user_id)
  end
end
