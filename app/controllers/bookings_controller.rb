class BookingsController < ApplicationController

  def index
    @user_id = current_user.id
    @bookings = Booking.where('user_id = ?', @user_id)
  end

  def create
    @booking = Booking.new
    @planet = Planet.find(params[:planet_id])
    @user = current_user.id

    @booking.start_date = params[:booking][:start_date].match(/^[0-9]*-[0-9]*-[0-9]*/).to_s
    @booking.end_date = params[:booking][:start_date].match(/[0-9]*-[0-9]*-[0-9]*$/).to_s

    @booking.status = 'Réservé'
    @booking.total_price = @planet.price
    @booking.planet_id = @planet.id
    @booking.user_id = @user

    @booking.save
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:total_price, :planet_id, :user_id, :start_date, :end_date)
  end
end
