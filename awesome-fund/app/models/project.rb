class Project < ApplicationRecord
  belongs_to :user
  has_many :pledges
  has_many :rewards
end
