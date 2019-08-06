class SongsController < ApplicationController

    def index
    end
    
    def show
        set_song
    end

    def edit
        set_song
    end

    def new
        @song = Song.new
    end

    def update
        set_song
        if @song.update(song_params)
            redirect_to @song
        else
            redirect_to edit_song_path
        end
    end

    def create
        @song = Song.new(song_params)
        if @song.save
            redirect_to @song
        else
            redirect_to new_song_path
        end
    end

    private
    def set_song
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
