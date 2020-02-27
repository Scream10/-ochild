class Kid::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @goal = Goal.where(params[user: @user])
    @tasks = Task.all
    @achievement = Achievement.new()
    @achievements = Achievement.all
  end
end
