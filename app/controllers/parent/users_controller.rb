class Parent::UsersController < Parent::ApplicationController
  def show
    @user = User.find(params[:id])
  end
end
