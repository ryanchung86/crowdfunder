class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :projects

  # validates :amount, presence: true
  validates :amount, numericality: { only_integer: true }
end
