
class SongsController < ApplicationController

  def new 
    @song = Song.new
end 

def create 
 
  @artist ||= Artist.find_by_id(params[:id])
  @genre ||= Genre.find_by_id(params[:id])
  #binding.pry
  @song = Song.create(songs_params)
  
  redirect_to song_path(@song)
end 

def update
  @song = Song.find(params[:id])
  @song.update(songs_params)
  @artist ||= @song.artist_id
  @genre ||= @song.genre_id
  redirect_to song_path(@song)
end 

def edit 
  @song = Song.find(params[:id])
end 



  def index
    # binding.pry
    @songs = Song.all
end 

def show 
  #binding.pry
  @song = Song.find(params[:id])
        @artist ||= @song.artist_id
        @genre ||= @song.genre_id
end 


  private 
  def songs_params
      params.require(:song).permit(:name, :song_id, :genre_id)
  end 
end
