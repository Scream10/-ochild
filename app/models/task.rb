class Task < ApplicationRecord
  belongs_to :category
  has_many :achievements

  has_one_attached :photo

  validates :name, presence: true, length: { in: 4..20 }
  validates :description, length: { maximum: 80 }

  def name_of_method
  "#{name} - #{description}"
  end
end
