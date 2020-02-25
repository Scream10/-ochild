class Goal < ApplicationRecord
  belongs_to :user
  has_many :proportions
  has_many :categories, through: :proportions

  validates :title, presence: true
  validates :end_date, presence: true
  validates :total_points, presence: true, numericality: true
end
