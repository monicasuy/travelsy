class ItinerariesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @itineraries = Itinerary.all
  end

  def show
    @city = City.find(params[:city_id])
    @itinerary = Itinerary.find(params[:id])
    @stops = @itinerary.stops.order('day ASC')
    @days = [*1..@itinerary.days]
    @photos = []
    @stops.each do |stop|
      @photos << stop.photo.key
    end
    @markers = @stops.geocoded.map do |stop|
      {
        lat: stop.latitude,
        lng: stop.longitude,
        info_window: render_to_string(partial: "info_window", locals: { stop: stop }),
        image_url: helpers.asset_url('marker.svg')
      }
    end
  end

  def new
    @city = City.find(params[:city_id])
    @itinerary = Itinerary.new
    @itinerary.stops.build
  end

  def create
    @city = City.find(params[:city_id])
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.city = @city
    @itinerary.user = current_user
    if @itinerary.save
      redirect_to new_itinerary_stop_path(@itinerary)
    else
      render :new
    end
  end



  private

  def itinerary_params
    params.require(:itinerary).permit(:content, :days)
  end
end
