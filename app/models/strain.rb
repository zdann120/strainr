class Strain < ApplicationRecord
  belongs_to :user, foreign_key: 'created_by'
end
