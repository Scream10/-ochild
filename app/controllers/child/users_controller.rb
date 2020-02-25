class Child::UsersController < Child::ApplicationController
  def show
    @user = User.find(params[:id])
    @tasks = Task.all

    @achievements = Achievement.all
  end
end
