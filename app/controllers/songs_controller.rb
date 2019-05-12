class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id.to_i)
    @genre = Genre.find(@song.genre_id.to_i)
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params(:name))
    @song.artist = Artist.find(params[:song][:artist_id].to_i)
    @song.genre = Genre.find(params[:song][:genre_id].to_i)
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :bio))
    redirect_to song_path(@song)
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
