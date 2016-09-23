class Reward < ApplicationRecord
  belongs_to :project

  validates  :description, presence: true
  validates :benchmark, numericality: { only_integer: true }
end
