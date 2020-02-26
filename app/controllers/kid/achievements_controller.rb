class Kid::AchievementsController < Kid::ApplicationController
  def new
    @achievement = Achievement.new()
    @user = User.find(params[:user_id])
  end

  def create
    @achievement = Achievement.new(achievement_params)
  end

  private

  def achievement_params
    params.require(:achievement).permit(:due_at, :achieve, :done, :task_id, :user_id)
  end
end
