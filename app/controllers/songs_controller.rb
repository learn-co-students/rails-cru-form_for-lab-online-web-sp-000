class SongsController < ApplicationController

    before_action :find_song, only: [:show, :edit, :update]

    def index
        @songs = Song.all.order("created_at DESC")
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        redirect_to songs_path(@song)
    end

    def show; end

    def edit; end

    def update
        @song.update(song_params)
        redirect_to songs_path(@song)
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def find_song
        @song = Song.find(params[:id])
    end

end
