class Adult::AchievementsController < ApplicationController
  def new
    @achievement = Achievement.new
    @tasks = Task.all
  end

  def create
    @kid = current_user.family.users.where(adult: false).first
    @achievement = Achievement.new(achievement_params)
    @achievement.user = @kid
    if @achievement.save
      redirect_to adult_user_path(current_user), alert: ""
    else
      render :new
    end
  end

  def edit
    @achievement = Achievement.find(params[:id])
  end

  def update
    @achievement = Achievement.find(params[:id])
    # @kid = @achievement.user

    if @achievement.update(achievement_params)
      @achievement.user.finish_goal
      redirect_to adult_user_path(current_user)
    else
      render :edit
    end
  end


  private

  def achievement_params
    params.require(:achievement).permit(:due_at, :achieve, :done , :points, :task_id, :user_id)
  end
end

