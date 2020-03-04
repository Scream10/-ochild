class Kid::UsersController < ApplicationController
  helper_method :count

  def show
    @user = current_user
    @goals = Goal.where(params[user: @user])
    @task = Task.new()
    @tasks = Task.all
    @achievement = Achievement.new()
    # @achievement_find = Achievement.find(params[:id])
    # @achievement = Achievement.find(params[:id])
    @achievements = Achievement.all
  end

end
