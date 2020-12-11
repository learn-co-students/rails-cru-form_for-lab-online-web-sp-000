class ArtistsController < ApplicationController
  def new
  end

  def create
  @artist = Artist.new(artist_params(:name, :bio))
  @artist.save
  redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
  @artist = Artist.find(params[:id])
  @artist.update(artist_params(:title))
  redirect_to artist_path(@artist)
  end

  def destroy
  end

  def index
  end

  def show
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
