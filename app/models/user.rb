class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :family, optional: :true
  has_many :goals
  has_many :achievements
  has_many :tasks, through: :achievements
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :family_name, presence: true
  # validates :adult, presence: true
  # we need to include true or false
  validates :date_of_birth, presence: true

  after_create :create_family


  def first_child
    family.users
          .where(adult: false)
          .first
  end

  def create_family
    family = Family.find_or_create_by(name: self.family_name)
    self.update(family: family)
  end

  def kids
    family.users.where(adult: false)
  end

  def adult2
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

  ################# CHILD SPINNING ################
  # Goal

  def total_goals_points
    goals.map(&:total_points).sum
  end

  # Total_for_kid

  def total_goals_points_for_chore
    goals.map(&:total_points).sum * chore_category_pourcent * 0.01
  end

  def total_goals_points_for_reading
    goals.map(&:total_points).sum * reading_category_pourcent * 0.01
  end

  def total_goals_points_for_grade
    goals.map(&:total_points).sum * grade_category_pourcent * 0.01
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
    achieved_achievements_chores.map(&:points).sum * 100.0 / total_goals_points_for_chore
  end

  def total_readings_score
    achieved_achievements_readings.map(&:points).sum * 100.0 / total_goals_points_for_reading
  end

  def total_grades_score
    achieved_achievements_grades.map(&:points).sum * 100.0 / total_goals_points_for_grade
  end

  # Category_Pourcent

  def chore_category_pourcent
    Proportion.joins(:category).where(goal_id: last_goal_id).where(categories: {name: "chores"})[0].percent
  end

  def reading_category_pourcent
    Proportion.joins(:category).where(goal_id: last_goal_id).where(categories: {name: "readings"})[0].percent
  end

  def grade_category_pourcent
    Proportion.joins(:category).where(goal_id: last_goal_id).where(categories: {name: "grades"})[0].percent
  end

  def last_goal_id
    goals.last.id
  end

  ################# ADULT SPINNING ################

  # Total_for_adult

  def total_goals_points_for_chore_adult
    goals_of_my_kid.map(&:total_points).sum * chore_category_pourcent_adult * 0.01
  end

  def total_goals_points_for_reading_adult
    goals_of_my_kid.map(&:total_points).sum * reading_category_pourcent_adult * 0.01
  end

  def total_goals_points_for_grade_adult
    goals_of_my_kid.map(&:total_points).sum * grade_category_pourcent_adult * 0.01
  end

  # Achievements_Adult

  def achieved_achievements_chores_adult
    kids.first.achievements.joins(:task).where(achieve: true, done: true).where(tasks: {category_id: 1})
  end

  def achieved_achievements_readings_adult
    kids.first.achievements.joins(:task).where(achieve: true, done: true).where(tasks: {category_id: 2})
  end

  def achieved_achievements_grades_adult
    kids.first.achievements.joins(:task).where(achieve: true, done: true).where(tasks: {category_id: 3})
  end

   # Pourcent_Total_Adult

  def total_chores_score_adult
    achieved_achievements_chores_adult.map(&:points).sum * 100.0 / total_goals_points_for_chore_adult
  end

  def total_readings_score_adult
    achieved_achievements_readings_adult.map(&:points).sum * 100.0 / total_goals_points_for_reading_adult
  end

  def total_grades_score_adult
    achieved_achievements_grades_adult.map(&:points).sum * 100.0 / total_goals_points_for_grade_adult
  end

   # Category_Pourcent_For_Adult

  def chore_category_pourcent_adult
    Proportion.joins(:category).where(goal_id: last_goal_id_of_my_kid).where(categories: {name: "chores"})[0].percent
  end

  def reading_category_pourcent_adult
    Proportion.joins(:category).where(goal_id: last_goal_id_of_my_kid).where(categories: {name: "readings"})[0].percent
  end

  def grade_category_pourcent_adult
    Proportion.joins(:category).where(goal_id: last_goal_id_of_my_kid).where(categories: {name: "grades"})[0].percent
  end

  def last_goal_id_of_my_kid
    kids.first.goals.last
  end

  def goals_of_my_kid
    kids.first.goals
  end

end
