class SongsController < ApplicationController

    def create
        @song = Song.create(song_params)
        redirect_to songs_path(@song)
    end

    def edit
        set_song_variable_by_params_id
    end

    def index
        @songs = Song.all
    end
    
    def new
        @song = Song.new
    end
    
    def show
        set_song_variable_by_params_id
    end

    def update
        set_song_variable_by_params_id
        @song.update(song_params)
        redirect_to songs_path(@song)
    end

    private

        def set_song_variable_by_params_id
            @song = Song.find(params[:id])
        end

        def song_params
            params.require(:song).permit(:name, :genre_id, :artist_id)
        end
end
