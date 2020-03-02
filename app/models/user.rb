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

  def total_goals_points
    goals.map(&:total_points).sum
  end

  def total_score
    achieved_achievements.map(&:points).sum * 100.0 / total_goals_points
  end

end
