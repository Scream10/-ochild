class Kid::UsersController < ApplicationController
  helper_method :count

  def show
    @user = current_user

    @goal = current_user&.goals&.find_by(done: false)
    @goals = current_user&.goals&.where(done: true)
    # @goals = Goal.where(params[user: @user])

    @task = Task.new()
    @tasks = Task.all
    @achievement = Achievement.new()
    # @achievement_find = Achievement.find(params[:id])
    # @achievement = Achievement.find(params[:id])
    # @achievements = Achievement.all
    @achievements = current_user&.achievements&.where(done: false, achieve: false)
  end

end
