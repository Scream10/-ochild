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
    #@kid = User.where(family: current_user.family, adult: false)
    #@goals = Goal.where(adult: false, done: false)
    #@goals = Goal.where(params[user: @user], done: false)

    # DISPLAY ALL SUGGESTED TASKS
    @tasks = Task.all
    # NEW
    @task = Task.new()
    @achievement_new = Achievement.new()
    # EDIT
    # @achievement = Achievement.find(params[:id])
    # @achievement_find = Achievement.find(params[:id])

    # DISPLAY ALL ACHIEVEMENTS DONE:TRUE
    @achievements = current_user.family
                                .users
                                .where(adult: false)
                                .first
                                .achievements
                                .where(done: true, achieve: false)

    @achievements_true = current_user.family
                                .users
                                .where(adult: false)
                                .first
                                .achievements
                                .where(done: true, achieve: true)

    @pourcent_goal_achieve = count_achievements
  end

  private

  def count_achievements
    total_achievements = 0

    @achievements.each do |achievement|
      total_achievements += achievement.points
    end

    result = total_achievements * 100 / @goal.total_points
    return result
  end
end
