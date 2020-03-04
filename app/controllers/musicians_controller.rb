class MusiciansController < ApplicationController

  def index
    @musicians = User.where(musician: true)
  end

  def show
    @musicians = User.where(musician: true)
    @musician = @musicians.find(params[:id])
    @favorite = Favorite.new
  end

  def bookmark
     @musician = @musicians.find(params[:id])
     @musician.bookmark(params[:musician_id])

  end

end
