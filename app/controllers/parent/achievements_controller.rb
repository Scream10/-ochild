class Parent::AchievementsController < Parent::ApplicationController
  # def new
  # end

  # def create
  # end

  def edit
    @achievement = Achievement.find(params[:id])
  end

  def update
    @achievement = Achievement.find(params[:id])
    @achievement.update(achievement_params)

    redirect_to parent_users_path(current_user)
  end


  private

  def achievement_params
    params.require(:achievement).permit(:due_date, :achieve, :done ,:points, :task_id, :user_id)
  end

end
