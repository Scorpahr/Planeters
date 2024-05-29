class ReviewsController < ApplicationController
  before_action :set_planet

  def index
    @reviews = @planet.reviews
  end

  def create
    @review = @planet.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @planet, notice: 'Review was successfully created.'
    else
      redirect_to @planet, alert: 'There was an error creating the review.'
    end
  end

  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
