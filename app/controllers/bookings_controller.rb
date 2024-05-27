class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @planet = Planet.find(parmas[:planet_id])
    @user = curent_user.id
    @booking.planet_id = @planet
    @booking.user_id = @user

    if @review.save
      redirect_to planet_path(@planet)
    else
      render "/planets/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:total_price, :status, :planet_id, :user_id)
  end
end
