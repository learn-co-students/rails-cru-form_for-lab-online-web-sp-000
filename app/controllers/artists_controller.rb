class ArtistsController < ApplicationController
  def show
    @artist = find_artist_by_params_id
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = find_artist_by_params_id
  end

  def update
    @artist = find_artist_by_params_id
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def find_artist_by_params_id
    Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
