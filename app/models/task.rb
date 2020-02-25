class Task < ApplicationRecord
  belongs_to :category
  has_many :achievements

  validates :name, presence: true, length: { in: 4..20 }
  validates :description, length: { maximum: 80 }
  validates :points, presence: true, numericality: true
end
