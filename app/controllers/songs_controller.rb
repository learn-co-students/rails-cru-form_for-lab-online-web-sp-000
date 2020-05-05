class SongsController < ApplicationController
  def show
    @song = Song.find(params.require(:id))
  end

  def index
    @songs = Song.all
  end
  
  def new
    @song = Song.new
  end

  def create
    song = Song.create!(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(song)
  end

  def edit
    @song = Song.find(params.require(:id))
  end

  def update
    song = Song.find(params.require(:id))
    song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(song)
  end
end
