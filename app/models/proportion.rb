class Proportion < ApplicationRecord
  belongs_to :goal, inverse_of: :proportions
  belongs_to :category

  validates :percent, presence: true, numericality: true
end
