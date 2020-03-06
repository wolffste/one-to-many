class MusiciansController < ApplicationController



  def index
    @musicians = User.where(musician: true)
    @message = "Here are all our artists"


    if params[:search].present?
      @message = "Your search result"

      if params[:search][:instrument].present?
        @musicians = @musicians.where("instrument_id = ? ", params[:search][:instrument])
      end

      if params[:search][:genre].present?
        musicians = @musicians.where("genre_id = ? ", params[:search][:genre])
      end

      if params[:search][:startdate].present?
        startdate = Date.parse(params[:search][:startdate].split("to")[0].strip)
        @musicians = @musicians.where("startdate <= ?", startdate)

        enddate = Date.parse(params[:search][:startdate].split("to")[1].strip)
        @musicians = @musicians.where("enddate >= ?", enddate)
      end
    end
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
    @musician.startdate = Date.parse(musician_params[:startdate].split("to")[0].strip)
    @musician.enddate = Date.parse(musician_params[:startdate].split("to")[1].strip)
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
    params.require(:user).permit(:username, :description, :fee, :startdate, :enddate, :city, :birthday, :musician, :genre_id, :instrument_id, :photo)
  end

end
