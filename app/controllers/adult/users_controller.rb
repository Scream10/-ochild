class Adult::UsersController < ApplicationController
  def show
    # DISPLAY GOAL ON DASHBOARD
    @goal = current_user.first_child&.goals&.find_by(done: false)

    # @family = current_user.family
    #@kid = User.where(family: current_user.family, adult: false)
    # @goal = Goal.where(user: @child, done: false).first

    # DISPLAY ALL SUGGESTED TASKS
    @tasks = Task.all
    # NEW
    @task = Task.new()
    @achievement_new = Achievement.new()
    # EDIT
    # @achievement = Achievement.find(params[:id])
    # @achievement_find = Achievement.find(params[:id])

    # DISPLAY ALL ACHIEVEMENTS DONE:TRUE
    @achievements = current_user.first_child&.achievements&.where(done: true, achieve: false)
    @achievements_true = current_user.first_child&.achievements&.where(done: true, achieve: true)
    @pourcent_goal_achieve = count_achievements
  end

  private

  def count_achievements
    total_achievements = @achievements.to_a.map(&:points).sum
    result = total_achievements.zero? ? 0 : total_achievements * 100 / @goal.total_points
    return result
  end
end
