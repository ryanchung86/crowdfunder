class Project < ApplicationRecord
  belongs_to :user
  has_many :pledges
  has_many :rewards

  accepts_nested_attributes_for :rewards, reject_if: :all_blank

  validates :title, :description, :end_date , presence: true
  validates :goal, numericality: {only_integer: true}
end
