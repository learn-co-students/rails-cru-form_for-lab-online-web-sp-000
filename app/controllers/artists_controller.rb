require 'pry'

class ArtistsController < ApplicationController

    def index 
        @artists = Artist.all
    end 

    def new 
        @artists = Artist.new
    end 

    def show 
        @artists = Artist.find(params[:id])
    end 

    def create
        @artists = Artist.new
        @artists.name = params[:artist][:name]
        @artists.bio = params[:artist][:bio]
        @artists.save 
        redirect_to artist_path(@artists)
    end 

    def edit 
        @artists = Artist.find(params[:id])
    end 

    def update 
        @artists = Artist.find(params[:id])
        @artists.update(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artists)
    end 

end
