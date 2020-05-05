class GenresController < ApplicationController
  def show
    @genre = Genre.find(params.require(:id))
  end

  def new
    @genre = Genre.new
  end

  def create
    # genre = Genre.create!(params.require(:artist).permit(:name, :bio))
    # redirect_to artist_path(genre)
  end

  def edit
    @genre = Genre.find(params.require(:id))
  end

  def update
    # @artist = Artist.find(params.require(:id))
    # @artist.update(params.require(:artist).permit(:name, :bio))
    # redirect_to artist_path(@artist)
  end
end
