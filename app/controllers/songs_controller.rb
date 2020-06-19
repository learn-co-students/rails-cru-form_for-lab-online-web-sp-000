class SongsController < ApplicationController
  def new
    @song = Song.new
    @artists = Artist.all
    @genres = Genre.all
  end
  
  def create
    song = Song.create(post_params)
    redirect_to song_path(song)
  end

  def edit
    @song = Song.find(params[:id])
    @artists = Artist.all
    @genres = Genre.all
  end

  def update
    song = Song.find(params[:id])
    song.update(post_params)
    redirect_to song_path(song)
  end

  def show
    @song = Song.find(params[:id])
    @artist = @song.artist
    @genre = @song.genre
  end

  def index
    @songs = Song.all
  end

  def post_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
