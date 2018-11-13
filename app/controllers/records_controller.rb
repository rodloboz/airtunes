class RecordsController < ApplicationController
  before_action :set_artist, only: [:new, :create]

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.artist = @artist

    if @record.save
      redirect_to @artist
    else
      render :new
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy

    redirect_to @record.artist
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def record_params
    params.require(:record).permit(:title, :image_url)
  end
end
