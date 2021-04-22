class SongsController < ApplicationController
    def index
        @song = Song.new
    end 

    def new 
        @song = Song.new
    end 

    def show 
        @song = Song.find(params[:id])
    end 

    def create 
        @song = Song.new(songs_params)
        @song.save
        redirect_to song_path(@song)
    end 

    def update
        @song = Song.find(params[:id])
        @song.update(songs_params)
        redirect_to song_path(@song)
    end 

    def edit 
        @song = Song.find(params[:id])
    end 

    private 
    def songs_params
        params.require(:song).permit(:name, :song_id, :genre_id)
    end 
end
