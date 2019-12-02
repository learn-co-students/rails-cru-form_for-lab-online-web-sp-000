class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.create(name: params[:name], bio: params[:bio])
    redirect_to artist_path(@artist)
  end

end
