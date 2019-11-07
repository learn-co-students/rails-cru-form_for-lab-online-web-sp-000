class ArtistsController < ApplicationController
    def index 
        @artists = Artist.all 
    end 

    def show 
        @artists = Artist.find(params[:id])
    end 

    def new 
        @artists = Artist.new 
    end 

    def create 
        @artists = Artist.new(artist_params(:name, :bio))
        @artists.save 
        redirect_to artist_path(@artists)
    end 

    def update 
        @artists = Artist.find(params[:id])
        @artists.update(artist_params(:name, :bio))
        redirect_to artist_path(@artists)
    end 

    def edit 
        @artists = Artist.find(params[:id])
    end 

    private

    def artist_params(*args)
      params.require(:artist).permit(*args)
    end
end