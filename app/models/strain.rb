class Strain < ApplicationRecord
  include SearchCop

  search_scope :search do
    attributes :name, :variant
  end

  belongs_to :user, foreign_key: 'created_by'
  has_many :ratings
end
