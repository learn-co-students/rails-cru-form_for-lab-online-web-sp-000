class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def edit
        @song = Song.find(params[:id])
        render 'form'
    end

    def new
        @song = Song.new
        render 'form'
    end

    def create
        @song = Song.create(s_params(:song, :name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def update
        @song = Song.update(s_params(:song, :name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

end
