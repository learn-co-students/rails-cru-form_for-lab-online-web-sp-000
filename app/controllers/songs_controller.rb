class SongsController < ApplicationController

  def show
    set_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    set_song
  end

  def update
    set_song
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  private

  def set_song
    @song = Song.find(params[:id])
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end
end
