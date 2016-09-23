class Project < ApplicationRecord
  belongs_to :user
  has_many :pledges
  has_many :rewards

  has_attached_file :image, default_url: "http://placekitten.com/200/200"

  accepts_nested_attributes_for :rewards, reject_if: :all_blank

  validates :title, :description, :end_date , presence: true
  validates :goal, numericality: {only_integer: true}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
