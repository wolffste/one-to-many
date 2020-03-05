class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def show_dashboard
    @user = current_user
    @bands = @user.bands
    @bookings = Booking.joins(:band).where(bands: {user_id: @user.id}).order(created_at: :desc)

  end
end
