class Kid::UsersController < ApplicationController
  helper_method :count

  def show
    @user = User.find(params[:id])
    @goal = Goal.where(params[user: @user])
    @tasks = Task.all
    @achievement = Achievement.new()
    @achievements = Achievement.all
    @count_achievement_done_true = current_user.achievements.where(done: true, achieve: false)
    @count_achievement_done_false = current_user.achievements.where(done: false, achieve: false)
  end
end
