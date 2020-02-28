class Adult::AchievementsController < ApplicationController
  def new
    @achievement = Achievement.new
  end

  def create
    @child = current_user.family.users.where(adult: false).first
    @achievement = Achievement.new(achievement_params)
    @achievement.user = @child
    if @achievement.save
      redirect_to adult_user_path(current_user)
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

    redirect_to adult_user_path(current_user)
  end


  private

  def achievement_params
    params.require(:achievement).permit(:due_date, :achieve, :done ,:points, :task_id, :user_id)
  end
end

