class Adult::UsersController < ApplicationController
  def show
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

      # DISPLAY ALL SUGGESTED TASKS
      @tasks = Task.all

      # DISPLAY ALL ACHIEVEMENTS DONE:TRUE
      @achievements = current_user.family
                                  .users
                                  .where(adult: false)
                                  .first
                                  .achievements
                                  .where(done: true, achieve: false)
  end
end
