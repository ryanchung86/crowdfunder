class Project < ApplicationRecord
  belongs_to :user
  has_many :pledges
  has_many :rewards

  validates :title, :description, :end_date , presence: true
  validates :goal, numericality: {only_integer: true}
end
