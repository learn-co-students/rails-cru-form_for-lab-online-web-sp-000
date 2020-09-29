require 'pry'
class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
      
    end

    def create
        binding.pry
        song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
        # song = Song.new(params.require(:song).permit(:name))
        # song.artist = Artist.find_or_create_by(name: params[:song][:artist])
        # song.genre = Genre.find_or_create_by(name: params[:song][:genre])
        if song.save
            redirect_to song_path(song)
        else
            redirect_to new_song_path
        end
    end

    def edit
        @song = Song.find_by(id: params[:id])
       
    end

    def update
        song = Song.find_by(id: params[:id])
        song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        # song.name = params[:song][:name]
        # song.artist = Artist.find_or_create_by(name: params[:song][:artist])
        # song.genre = Genre.find_or_create_by(name: params[:song][:genre])
        redirect_to song_path(song)
    end

    def show
        @song = Song.find_by(id: params[:id])
    end

end
