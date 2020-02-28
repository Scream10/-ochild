class Kid::UsersController < ApplicationController
  helper_method :count

  def show
    @user = User.find(params[:id])
    @goal = Goal.where(params[user: @user])
    @tasks = Task.all
    @achievement = Achievement.new()
    @achievements = Achievement.all
    @count_achievement_done_true = current_user.achievements.where(done: true, achieve: false)
    @count_achievement_done_false = current_user.achievements.where(done: false, achieve: false)
    @pourcent_goal_achieve = count_achievements
  end

  private

  def count_achievements
    total_achievements = 0

    @goal.each do |goal|
      @achievements.each do |achievement|
        total_achievements += achievement.points
      end

      result = total_achievements * 100 / goal.total_points
      return result
    end
  end

end
