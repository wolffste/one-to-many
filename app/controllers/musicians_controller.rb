class MusiciansController < ApplicationController

  def index
    @musicians = User.where(musician: true)
  end

  def show
    @musicians = User.where(musician: true)
    @musician = @musicians.find(params[:id])
    @favorite = Favorite.new
  end

  def edit
    @musician = User.find(params[:id])
  end

  def update
    @musician = User.find(params[:id])
    @musician.update(musician_params)
    if @musician.save
      redirect_to musician_path(@musician)
    else
      render :new
    end
  end

  def bookmark
   @musician = @musicians.find(params[:id])
   @musician.bookmark(params[:musician_id])
 end

 private

 def musician_params
  params.require(:user).permit(:description, :fee, :startdate, :enddate, :city, :birthday, :musician, :genre_id, :photo)
end

end
