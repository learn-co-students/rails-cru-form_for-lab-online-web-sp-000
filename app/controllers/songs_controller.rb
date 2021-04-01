class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = song_finder
        @genre = @song.genre
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params(:name, :artist_id, :genre_id))
        @song.genre_id = Genre.find_or_create(params(:genre_id))
        @song.save
        redirect_to song_path(@song)
    end

    def edit
        @song = song_finder
    end

    def update
        @song = Song.update(song_params(:name, :artist_id, :genre_id))
    end

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end

    def song_finder
        @song = Song.find(params[:id])
    end
end
