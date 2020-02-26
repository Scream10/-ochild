class Adult::AchievementsController < Adult::ApplicationController
  # def new
  # end

  # def create
  # end

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

