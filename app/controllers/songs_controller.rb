class SongsController < ApplicationController
	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
	end

	def new
        @song = Song.new
        @artists = Artist.all
        @genres = Genre.all
	end

	def create
        @song = Song.new(song_params(:name))
        @song.artist = Artist.find(song_params(:artist_id)[:artist_id])
        @song.genre = Genre.find(song_params(:genre_id)[:genre_id])
		@song.save
		redirect_to song_path(@song)
	end

	  def update
		@song = Song.find(params[:id])
		@song.update(song_params(:name))
		redirect_to song_path(@song)
	  end

	def edit
      @song = Song.find(params[:id])
      @artists = Artist.all
      @genres = Genre.all
	end
	def song_params(*args)
		params.require(:song).permit(*args)
	end
end

