class StrainsController < ApplicationController
  before_action :authenticate_user!
  def index
    @strains = Strain.all
  end

  def show
    @strain = Strain.find params[:id]
  end

  def new
    @strain = current_user.strains.new
  end

  def create
    @strain = current_user.strains.new(strain_params)

    if @strain.save
      redirect_to strains_url, notice: 'Strain added successfully!'
    else
      render :new
    end
  end

  def edit
    @strain = Strain.find params[:id]
  end

  def update
    @strain = Strain.find params[:id]
    if @strain.update(strain_params)
      redirect_to @strain
    else
      render :edit
    end
  end

  private

    def strain_params
      params.require(:strain).permit(:name, :variant)
    end
end

