class Child::UsersController < Child::ApplicationController
  def show
    @user = User.find(params[:id])
    @goal = Goal.where(params[user: @user])
    @tasks = Task.all
    @achievements = Achievement.all
  end
end
