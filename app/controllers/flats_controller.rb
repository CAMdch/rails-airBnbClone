class FlatsController < ApplicationController
  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat.id)
    else
      render :new
    end
  end

  def new
    @flat = Flat.new
  end

  def show
    @flat = Flat.find(params[:id])
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :number_of_travelers, :number_of_beds, :number_of_bathrooms, :price_per_night, :address, photos: [])
  end
end
