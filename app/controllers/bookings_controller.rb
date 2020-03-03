class BookingsController < ApplicationController
  before_action :set_booking, only: []

  def new
    @band = Band.find(params[:band_id])
    @booking = Booking.new
  end

  def create
    @band = Band.find(params[:band_id])
    @booking = Booking.new(booking_params)
    @booking.band = @band
    @booking.band.user = current_user
    @booking.user = User.find(params[:user_id])
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:startdate, :enddate, :total_fee, :band_id)

  end

end
