class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find_by(id: params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        # binding.pry
        @artist = Artist.new
        @artist.name = params[:artist][:name]
        @artist.bio = params[:artist][:bio]
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = Artist.find_by(id: params[:id])
    end

    def update
        @artist = Artist.find_by(id: params[:id])
        @artist.update(params.require(:post).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end

end