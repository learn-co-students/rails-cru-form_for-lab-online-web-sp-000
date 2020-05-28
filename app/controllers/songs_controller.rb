class SongsController < ApplicationController
    def index
        @songs = Song.all
        # @genre = Genre.find(id=@song.genre_id)
        
    end

    def show
        # binding.pry
        @song = Song.find(params[:id])
    end
    
    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.name = params[:song][:name]
        @song.artist_id = params[:song][:artist_id]
        @song.genre_id = params[:song][:genre_id]
        @song.save
        redirect_to songs_path(@songs)
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new
        @song.name = params[:song][:name]
        @song.artist_id = params[:song][:artist_id]
        @song.genre_id = params[:song][:genre_id]
        @song.save
        redirect_to songs_path(@song)
    end
end
