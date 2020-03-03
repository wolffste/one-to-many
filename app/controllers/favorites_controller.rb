class FavoriteController < ActionController::Base

  def index
    @favorites = @user.favorites
  end

  def show
    @favorite = Favorite.find(params[:id])
  end


  def new
    @musician = User.find(params[:musician_id])
    @favorite = Favorite.new
  end

  def create
    @musician = User.find(params[:musician_id])
    raise
    current_user.favorites.create(:musician_id => params[:musician_id])
    render :layout => false
  end
end
