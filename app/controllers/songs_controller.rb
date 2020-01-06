class SongsController < ApplicationController

  before_action :set_song, only: [:show, :edit]

  def index
    @songs = Song.all
  end

  def show
    @genre = Genre.find(params[:id])
    @artist = Artist.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:name))
    @artist = @song.artist_id
    @genre = @song.genre_id
    @song.save
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
    @song = Song.update(song_params(:name))
    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end

end