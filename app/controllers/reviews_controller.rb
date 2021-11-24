class ReviewsController < ApplicationController
  def new
    @itinerary = Itinerary.find(params[:itinerary_id])
    @review =  Review.new
  end

  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @review = Review.new(review_params)
    @review.itinerary = @itinerary
    @itinerary.user = current_user
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
