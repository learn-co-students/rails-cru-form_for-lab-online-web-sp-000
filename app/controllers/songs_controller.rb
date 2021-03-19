class SongsController < ApplicationController
    def index
        @songs = Songs.all
    end

    def show
        @song = song_finder
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(params[:name, :artist_id, :genre_id])
        @song.save
        redirect_to songs_path(@song)
    end

    def edit
        @song = song_finder
    end

    def update
        @song = Song.update(params[:name, :artist_id, :genre_id])
    end

    private

    def song_params(*args)
        params.require(:SONG).permit(*args)
    end

    def song_finder
        @song = Song.find(params[:id])
    end
end
