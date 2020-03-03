class MusiciansController < ApplicationController

  def index
    @musicians = User.where(musician: true)
  end

  def show
    @musicians = User.where(musician: true)
    @musician = @musicians.find(params[:id])
  end

end
