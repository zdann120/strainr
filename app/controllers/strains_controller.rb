class StrainsController < InheritedResources::Base

  private

    def strain_params
      params.require(:strain).permit(:name, :variant, :created_by)
    end
end

