class Achievement < ApplicationRecord
  belongs_to :task
  belongs_to :user

  validates :points, presence: true, numericality: true
end
