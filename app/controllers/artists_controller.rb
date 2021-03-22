require "pry"
class ArtistsController < ApplicationController
    def index
        @artist = Artist.all
    end

    def show
        #binding.pry
        @artist = artist_finder
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params(:name,:bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = artist_finder
    end

    def update
        @artist = Artist.update(params[:name, :bio])
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

    def artist_finder
        @artist = Artist.find(params[:id])
    end
end
