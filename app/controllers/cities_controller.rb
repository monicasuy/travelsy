class CitiesController < ApplicationController

  def index
    @cities = City.all.order(name: :asc)
    @barcelona = City.find_by_name("Barcelona")
  end

  def show
    @city = City.find(params[:id])
    city = City.find_by(name: params[:city])
    @keywords = []
    @keywords = params.each.to_a
    @keywords = @keywords.map { |k| k[0] }
    if city.present? && @keywords.any?
      @itineraries = Itinerary.where(city: city).where(keywords: @keywords)
    elsif city.present?
      @itineraries = Itinerary.where(city: city)
    else
      @itineraries = City.find(params[:id]).itineraries
    end

    @top_three = @itineraries.order("upvotes DESC").first(3).sort_by(&:days)

    @top_three_day = @itineraries.where(days: 3).order("upvotes ASC").first(3)
    @top_four_day = @itineraries.where(days: 4).order('upvotes ASC').first(3)
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def city_params
    params.require(:city).permit(:name)
  end
end
