class SongsController < ApplicationController
    def index 
        @songs = Song.all 
    end 

    def show 
        @songs = Song.find(params[:id])
    end 

    def new 
        @songs = Song.new 
    end 

    def create 
        @songs = Song.new(song_params(:name, :artist_id, :genre_id))
        @songs.save 
        redirect_to song_path(@songs)
    end 

    def update 
        @songs = Song.find(params[:id])
        @songs.update(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@songs)
    end 

    def edit 
        @songs = Song.find(params[:id])
    end 

    private

    def song_params(*args)
      params.require(:song).permit(*args)
    end
end