class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :family
  has_many :goals
  has_many :achievements
  has_many :tasks, through: :achievements

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :adult, presence: true
  validates :date_of_birth, presence: true
end
