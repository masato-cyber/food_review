class Review < ApplicationRecord
  belongs_to :user
  belongs_to :food_shop
  validates :score, presence: true
end
