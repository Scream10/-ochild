class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :family
  has_many :goals
  has_many :achievements
  has_many :tasks, through: :achievements
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :adult, presence: true
  # we need to include true or false
  validates :date_of_birth, presence: true

  def kids
    family.users.where(adult: false)
  end

  def adult
    family.users.where(adult: true)
  end

  def achieved_achievements
    achievements.where(done: true, achieve: true)
  end

  def no_done_achievements
    achievements.where(done: false, achieve: false)
  end

  def done_achievements
    achievements.where(done: true, achieve: false)
  end

  def total_goals_points
    goals.map(&:total_points).sum
  end

  def total_score
    achieved_achievements.map(&:points).sum * 100.0 / total_goals_points
  end

  def finish_goal
    goals.find_by(done: true).update(done: true) if total_score >= 100
  end

  # Achievements

  def achieved_achievements_chores
    achievements.joins(:task).where(achieve: true, done: true).where(tasks: {category_id: 1})
  end

  def achieved_achievements_readings
    achievements.joins(:task).where(achieve: true, done: true).where(tasks: {category_id: 2})
  end

  def achieved_achievements_grades
    achievements.joins(:task).where(achieve: true, done: true).where(tasks: {category_id: 3})
  end

  # Pourcent_Total

  def total_chores_score
    achieved_achievements_chores.map(&:points).sum * 100.0 / total_goals_points
  end

  def total_readings_score
    achieved_achievements_readings.map(&:points).sum * 100.0 / total_goals_points
  end

  def total_grades_score
    achieved_achievements_grades.map(&:points).sum * 100.0 / total_goals_points
  end

  # Category_Pourcent

  def chore_category_pourcent
    Proportion.where(goal_id: last_goal)
  end

  # Last_Goal

  def last_goal
    goals.last
  end

end
