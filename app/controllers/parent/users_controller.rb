class Parent::UsersController < Parent::ApplicationController
  def show
    # DISPLAY ALL TASKS
    @tasks = Task.all

    # DISPLAY GOAL ON DASHBOARD

    @goal = current_user.family
                        .users
                        .where(adult: false)
                        .first
                        .goals
                        .find_by(done: false)

    # @family = current_user.family
    # @child = User.where(family: current_user.family, adult: false)
    # @goal = Goal.where(user: @child, done: false).first
  end
end
