class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(set_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    find_artist
  end

  def update
    find_artist
    @artist.update(set_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
    find_artist
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def set_params(*args)
    params.require(:artist).permit(*args)
  end
end
