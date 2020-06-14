class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      redirect_to new_song_path
    end

  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)

    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(song_params)
    @song.destroy
    
    redirect_to songs_path
  end

  def new
    @song = Song.new
  end
  
  private
  
    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
