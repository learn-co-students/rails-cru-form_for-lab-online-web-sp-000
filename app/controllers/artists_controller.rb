class ArtistsController < ApplicationController

    def index
        @artists = Artist.all 
    end

    def new
        @artist = Artist.new
    end

    def show 
    end

    def create
        @artist = Artist.create(artist_params(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def update
        @artist.update(artist_params(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

    def get_artist
        @artist = Artist.find(params[:id])
    end
end
