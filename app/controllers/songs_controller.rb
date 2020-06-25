class SongsController < ApplicationController

    def index 
        @songs = Song.all
    end 

    def new 
        @songs = Song.new
    end 

    def create 
        @songs = Song.new 
        @songs.name = params[:song][:name]
        @songs.genre_id = params[:song][:genre_id]
        @songs.artist_id = params[:song][:artist_id]
        @songs.save
        redirect_to song_path(@songs)
    end 

    def show 
        @songs = Song.find_by(params[:id])
    end 

    def edit 
        @songs = Song.find(params[:id])
    end 

    def update 
        @songs = Song.find(params[:id])
        @songs.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@songs)
    end 

end
