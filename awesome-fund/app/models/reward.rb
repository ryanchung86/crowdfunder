class Reward < ApplicationRecord

  belongs_to :project, optional: true

  validates :description, presence: true
  validates :benchmark, numericality: { only_integer: true }

end
