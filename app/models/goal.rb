class Goal < ApplicationRecord
  belongs_to :user
  has_many :proportions, inverse_of: :goal
  has_many :categories, through: :proportions

  accepts_nested_attributes_for :proportions,
                                reject_if: proc { |attributes| attributes[:percent].blank? },
                                allow_destroy: true



  validates :title, presence: true
  validates :end_date, presence: true
  validates :total_points, presence: true, numericality: true
end
