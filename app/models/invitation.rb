class Invitation < ApplicationRecord
  has_secure_token :code
end
