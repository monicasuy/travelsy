class StopsController < ApplicationController
  def new
    @itinerary = Itinerary.find(params[:itinerary_id])
    @days = [*1..@itinerary.days]
    @stop = Stop.new
  end

  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @stop = Stop.new(strong_params)
    @stop.itinerary = @itinerary
    @stop.save
    redirect_to new_itinerary_stop_path(@itinerary)
  end

  private

  def strong_params
    params.require(:stop).permit(:title, :content, :day, :price, :category, :address)
  end
end
