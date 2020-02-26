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
    params.require(:achievement).permit(:due_at, :task_id, :user_id, :achieve, :done, :points)
  end
end
