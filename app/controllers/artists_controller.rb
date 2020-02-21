class ArtistsController < ApplicationController
    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(params)
        @artist.save
        redirect_to post_path(@artist)
    end
end
