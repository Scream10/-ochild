class Child::UsersController < Child::BaseController
  def show
    @user = User.find(params[:id])
  end
end
