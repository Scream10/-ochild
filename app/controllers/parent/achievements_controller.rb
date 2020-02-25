class Parent::AchievementsController < Parent::ApplicationController
  def new

  end

  def create

  end

  def edit
    @achievement = Achievement.find(params[:id])
  end

  def update
    @achievement = Achievement.find(params[:id])
    @achievement.update(achievement_params)
    redirect_to parent_user_path(current_user)
  end

  def destroy

  end

  private

  def achievement_params
    params.require(:achievement).permit(:task_id, :user_id, :points, :achieve)
  end

end
