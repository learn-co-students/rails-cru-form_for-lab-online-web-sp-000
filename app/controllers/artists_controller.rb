class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(post_params)
        @artist.save
        redirect_to artist_path(@artist) #show page
    end

    def edit
        @artist = Artist.find_by(id: params[:id])
    end

    def update
        @artist = Artist.find_by(id: params[:id])
        @artist.update(post_params)
        @artist.save
        redirect_to artist_path(@artist) #show page

    end

    def show
        @artist = Artist.find_by(id: params[:id])
    end

    private
    def post_params
        params.require(:artist).permit(:name, :bio)
    end

end
