class BookingsController < ApplicationController
  before_action :set_booking, only: []

  def new

    @bands = current_user.bands
    @booking = Booking.new

  end

  def create
    @band = Band.find(params[:booking][:band_id])
    @booking = Booking.new(booking_params)
    @booking.band = @band
    @booking.band.user = current_user
    @booking.user = User.find(params[:musician_id]) #the booked musician

    if @booking.save
      redirect_to musician_path(@booking.user)
    else
      render :new
    end
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:startdate, :enddate, :total_fee, :band_id)

  end

end
