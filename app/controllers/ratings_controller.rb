class RatingsController < ApplicationController
  before_action :set_strain

  def new
    @rating = @strain.ratings.new
  end

  def create
    @rating = @strain.ratings.new(rating_params)
    @rating.user = current_user
    if @rating.save!
      redirect_to @strain
    else
      render :new
    end
  end

  private
    def set_strain
      @strain = Strain.find params[:strain_id]
    end

    def rating_params
      params.require(:rating).permit(:strain_id, :user_id, :score, :comment, :product_type, :token)
    end
end

