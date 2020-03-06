class MusiciansController < ApplicationController



  def index
    if params[:search].present? == false
      @message = "Here are all our artists"
      return @musicians = User.where(musician: true)
    end



    startdate = params[:search][:startdate].split("to")[0].strip
    enddate = params[:search][:startdate].split("to")[1].strip



    if params[:search][:instrument].present? && params[:search][:genre].present? && params[:search][:startdate]
      @musicians = User.where("instrument_id = ? and genre_id = ? and startdate >= ? and enddate <= ? ", "#{params[:search][:instrument]}", "#{params[:search][:genre]}", "#{startdate}", "#{enddate}")
      @message = "Your search result"
    elsif
      params[:search][:instrument].present? && params[:search][:genre] == ""
      @musicians = User.where("instrument_id = ? ", "#{params[:search][:instrument]}")
      @message = "Your search result"
    elsif
      params[:search][:instrument] == "" && params[:search][:genre].present?
      @musicians = User.where("genre_id = ? ", "#{params[:search][:genre]}")
      @message = "Your search result"
    else
      @message = "Check out all our artists"
      @musicians = User.where(musician: true)
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
