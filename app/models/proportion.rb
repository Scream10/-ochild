class Proportion < ApplicationRecord
  belongs_to :goal
  belongs_to :category

  validates :percent, presence: true, numericality: true
end
