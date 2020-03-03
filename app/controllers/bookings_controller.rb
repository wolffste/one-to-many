class BookingsController < ApplicationController
  before_action :set_booking only: []

  def new
    @band = Band.find(params[:id])
    @booking = Booking.new
  end

  def create

  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
