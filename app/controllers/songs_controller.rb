class SongsController < ApplicationController
    def index
        @songss = Songs.all 
    end

    def show
        @songs = Songs.find(params[:id])
    end
    
    def edit
        @songs = Songs.find(params[:id])
    end

    def update
        @songs = Songs.find(params[:id])
        @songs.name = params[:songs][:name]
        @songs.artist_id = params[:songs][:artist_id]
        @songs.genre_id = params[:songs][:genre_id]
        @songs.save
        redirect_to songs_path(@songs)
    end

    def new
        @songs = Songs.new
    end

    def create
        @songs = Songs.new
        @songs.name = params[:songs][:name]
        @songs.artist_id = params[:songs][:artist_id]
        @songs.genre_id = params[:songs][:genre_id]
        @songs.save
        redirect_to songs_path(@songs)
    end
end
