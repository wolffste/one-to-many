  require 'date'

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
    @musician = User.find(favorite_params[:musician_id])
    if fav_exist?
      @favorite = Favorite.where(user: current_user, musician: @musician).first
      Favorite.destroy(@favorite.id)
    else
      @favorite = Favorite.new(user: current_user, musician: @musician)
      @favorite.save
    end
   #redirect_to musician_path(@favorite.musician_id)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path

  end

  private

  def fav_exist?
    @favorite = Favorite.where(user: current_user, musician: @musician)
    if @favorite.empty?
      return false
    else
      return true
    end
  end

  def favorite_params
    params.require(:favorite).permit(:user_id, :musician_id)
  end
end

