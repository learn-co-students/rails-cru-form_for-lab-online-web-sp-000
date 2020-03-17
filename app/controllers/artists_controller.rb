class ArtistsController < ApplicationController
  def show
    set_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    set_artist
  end

  def update
    set_artist
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
