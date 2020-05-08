class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end

  def show
    @song = find_song_by_params_id
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    @artist = Artist.find(params[:song][:artist_id])
    @genre = Genre.find(params[:song][:genre_id])
    @song.artist = @artist
    @song.genre = @genre
    @song.save

    redirect_to song_path(@song)
  end

  def edit
    @song = find_song_by_params_id
  end

  def update
    @song = find_song_by_params_id
    @song.update(song_params)

    redirect_to song_path(@song)
  end

  private

  def find_song_by_params_id
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
