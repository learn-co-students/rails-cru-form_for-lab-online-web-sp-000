class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(set_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    set_song
  end

  def index
    @song = Song.all
  end

  def update
    set_song
    @song.update(set_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    set_song
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
  end

    private

    def set_song
      @song = Song.find(params[:id])
    end

    def set_params(*args)
      params.require(:song).permit(*args)
    end
end
