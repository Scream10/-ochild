class Category < ApplicationRecord
  has_many :tasks
  has_many :proportions

  validates :name, presence: true, inclusion: { in: ["chores", "readings", "grades"] }
end
