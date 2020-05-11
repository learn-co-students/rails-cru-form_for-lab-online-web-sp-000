class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(post_params(params[:song][:name],params[:song][:artist_id] , params[:song][:genre_id]))
        redirect_to song_path(@song)
    end

    def show
        find_song_instance
    end

    def edit
        find_song_instance
    end

    def update
        find_song_instance
        @song.update(post_params(params[:song][:name], params[:song][:artist_id], params[:song][:genre_id]))
        redirect_to song_path(@song)
    end

    private
    def post_params(*args)
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def find_song_instance
        @song = Song.find(params[:id])
    end

end