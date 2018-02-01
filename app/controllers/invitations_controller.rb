class InvitationsController < ApplicationController
  def redeem
    @form = RedeemInvite.new
  end

  def register
    @outcome = RedeemInvite.run(invite_params)
    if @outcome.valid?
      redirect_to root_path, notice: 'Success! You may now log in.'
    else
      @form = @outcome
      render :redeem
    end
  end

  private

  def invite_params
    params.require(:redeem_invite).permit(:code, :email, :password, :password_confirmation)
  end
end
