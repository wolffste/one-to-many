class BandsController < ApplicationController
  before_action :set_band, only: [:show, :edit, :update, :destroy]

  def index
    @bands = Band.all
  end

  def show;end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @band.user = current_user
    if @band.save
      redirect_to band_path(@band)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :description, :category)
  end
end
