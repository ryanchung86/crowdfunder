class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project

  def formatted_price
      price_in_dollars = amount.to_f / 100
      sprintf("%.2f", price_in_dollars)
    end
end
