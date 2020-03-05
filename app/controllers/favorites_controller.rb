class FavoritesController < ApplicationController
# class FavoritesController < ActionController::Base

  def index
    @favorites = current_user.favorites
  end

  def show
    @favorite = Favorite.find(params[:id])
  end


  def new
    @favorite = Favorite.new
  end

  def create
  favorite_params
   musician = User.find(favorite_params[:musician_id])
   @favorite = Favorite.new(user: current_user, musician: musician)
   @favorite.save
    redirect_to favorites_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :musician_id)
  end
end

