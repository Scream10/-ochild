class Kid::UsersController < ApplicationController
  helper_method :count

  def show
    @user = current_user
    @goals = Goal.where(params[user: @user])
    @tasks = Task.all
    @achievement = Achievement.new()
    # @achievement = Achievement.find(params[:id])
    @achievements = Achievement.all
  end

end
