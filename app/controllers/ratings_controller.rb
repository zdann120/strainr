class RatingsController < InheritedResources::Base

  private

    def rating_params
      params.require(:rating).permit(:strain_id, :user_id, :score, :comment, :product_type, :token)
    end
end

