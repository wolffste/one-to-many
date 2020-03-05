class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]

  def new

    @bands = current_user.bands
    @booking = Booking.new
    @musician = User.find(params[:musician_id])

  end

  def create
    @band = Band.find(params[:booking][:band_id])
    @booking = Booking.new(booking_params)
    @booking.band = @band
    @booking.band.user = current_user
    @booking.user = User.find(params[:musician_id]) #the booked musician

    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:startdate, :enddate, :total_fee, :band_id)

  end

end
