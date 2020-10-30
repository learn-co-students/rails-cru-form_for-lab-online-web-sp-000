class SongsController < ApplicationController


    def index
        @songs = Song.all 
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(post_params)
        @song.save
        redirect_to song_path(@song) #show page
    end

    def edit
        @song = Song.find_by(id: params[:id])
    end

    def update
        @song = Song.find_by(id: params[:id])
        @song.update(post_params)
        @song.save
        redirect_to song_path(@song) #show page

    end

    def show
        @song = Song.find_by(id: params[:id])
    end

    private
    def post_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end


end
