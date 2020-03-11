class ReviewsController < ApplicationController




  def create
    @writer = current_user
    @reciever = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.writer = @writer
    @review.receiver = @reciever
    if @review.save
      redirect_to dashboard_path
    else
      render "pages/show_dashboard"
    end
  end

  private

  def review_params
   params.require(:review).permit(:content, :rating)
  end
end
