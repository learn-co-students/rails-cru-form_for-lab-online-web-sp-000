class GenresController < ApplicationController

    def index 
        @genres = Genre.all
    end 

    def new 
        @genres = Genre.new
    end 

    def create 
        @genres = Genre.new 
        @genres.name = params[:genre][:name]
        @genres.save
        redirect_to genre_path(@genres)
    end 

    def show 
        @genres = Genre.find_by(params[:id])
    end 

    def edit 
        @genres = Genre.find(params[:id])
    end 

    def update 
        @genres = Genre.find(params[:id])
        @genres.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genres)
    end 
    
end
