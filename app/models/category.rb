class Category < ApplicationRecord
  has_many :tasks
  has_many :proportions

  CATEGORY = ["chores", "readings", "grades"]

  validates :type, presence: true, inclusion: { in: ["chores", "readings", "grades"] }
end
