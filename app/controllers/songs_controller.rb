class SongsController < ApplicationController
    def index 
        @songs = Song.all
    end 

    def show
        @song = Song.find(params[:id])
    end 

    def new 
        @song = Song.new
    end 

    def create 
        @songs = Song.create(song_params)
        redirect_to songs_path(@songs)
    end 

    def edit 
        @song = Song.find(params[:id])
    end 

    def update 
        @songs = Song.update(song_params)
        redirect_to songs_path(@songs)
    end 

    private
	    def song_params
	    	params.require(:song).permit(:name, :artist_id, :genre_id)
	    end
end
