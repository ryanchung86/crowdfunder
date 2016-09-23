class User < ApplicationRecord
  has_secure_password

  has_many :projects
  has_many :pledges

  validates :email, presence: true
end
