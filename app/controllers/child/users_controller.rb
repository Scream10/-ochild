class Child::UsersController < Child::ApplicationController
  def show
    @user = User.find(params[:id])
    @goal = Goal.where(params[user: @user])
  end
end
