class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :strains, foreign_key: :created_by
  has_many :ratings

  def created_by
    User.find(created_by)
  end

  def human_name
  	if first_name.blank? && last_name.blank?
  	  email
  	else
  	  [first_name, last_name].join(' ')
    end
  end
end
