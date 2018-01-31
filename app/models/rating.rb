class Rating < ApplicationRecord
  belongs_to :strain
  belongs_to :user
  has_secure_token

  validates :score, :comment, :product_type, presence: true
  validates :score, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 10
  }
end
