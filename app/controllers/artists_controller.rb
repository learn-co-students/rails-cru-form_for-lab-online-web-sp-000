class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        #strong params
        @artist = Artist.new(artist_params(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        #strong params
        @artist = Artist.find(params[:id])
        @artist = Artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    private
    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

end
