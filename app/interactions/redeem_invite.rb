class RedeemInvite < ActiveInteraction::Base
  string :code
  string :email
  string :password
  string :password_confirmation

  validates :code, :email, :password, :password_confirmation,
    presence: true

  def execute
    if Invitation.exists?(code: code)
      @invite = Invitation.find_by(code: code)
      if @invite.claimed
        errors.add(:code, 'has already been used.')
      else
        user = User.new
        user.email = email
        user.password = password
        user.password_confirmation = password_confirmation
        user.save
        errors.merge!(user.errors)
        return
        @invite.update(claimed: true, claimed_by: user.id)
      end
    else
      errors.add(:code, 'is not valid.')
    end
  end
end
