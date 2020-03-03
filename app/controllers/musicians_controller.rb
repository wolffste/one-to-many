class MusiciansController < ApplicationController

  def index
    @musicians = User.where(musician: true)
  end

  def show
    @musician = User.find(params[:id])
  end

end
