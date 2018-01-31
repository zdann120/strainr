class Rating < ApplicationRecord
  belongs_to :strain
  belongs_to :user
  has_secure_token
end
