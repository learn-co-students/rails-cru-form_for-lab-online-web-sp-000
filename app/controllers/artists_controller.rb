class ArtistsController < ApplicationController

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
        render 'form'
    end

    def new
        @artist = Artist.new
        render 'form'
    end

    def create
        @artist = Artist.create(s_params(:artist, :name, :bio))
        redirect_to artist_path(@artist)
    end

    def update
        @artist = Artist.update(s_params(:artist, :name, :bio))
        redirect_to artist_path(@artist)
    end

end
