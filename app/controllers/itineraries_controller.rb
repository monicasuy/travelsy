class ItinerariesController < ApplicationController
  def show
    @city = City.find(params[:city_id])
    @itinerary = Itinerary.find(params[:id])
  end

  def new
    @city = City.find(params[:city_id])
    @itinerary = Itinerary.new
  end

  def create
    @city = City.find(params[:city_id])
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.city = @city
    @itinerary.user = current_user
    if @itinerary.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:content, :days)
  end
end
