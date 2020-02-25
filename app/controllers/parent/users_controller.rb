class Parent::UsersController < Parent::ApplicationController
  def show
    # DISPLAY ALL TASKS
    @tasks = Task.all

    # DISPLAY GOAL ON DASHBOARD
    @family = current_user.family
    @child = User.where(family_id: @family, adult: false)
    @goal = Goal.where(user_id: @child, done: false).first
  end
end
