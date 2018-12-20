class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
  end

  def create
    @song = Song.create(genre_params)
    redirect_to genre_path(@song)
  end
  
  def edit
    @song = Song.find(params[:id])
  end 
  
  def update
    @song = Song.find(params[:id])
    @song.update(genre_params)
    redirect_to genre_path(@song)
  end

  private 
  def genre_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
