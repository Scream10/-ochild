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
    # NEW
    @achievement_new = Achievement.new
    # EDIT
    # @achievement = Achievement.find(params[:id])
    #@achievement_find = Achievement.find(params[:id])

    # DISPLAY ALL ACHIEVEMENTS DONE:TRUE
    @achievements = current_user.family
                                .users
                                .where(adult: false)
                                .first
                                .achievements
                                .where(done: true, achieve: false)

    @pourcent_goal_achieve = count_achievements

    @count_achievement_accomplished = current_user.achievements.where(done: true, achieve: true)
    @count_new_achievement = current_user.achievements.where(done: true, achieve: false)
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
