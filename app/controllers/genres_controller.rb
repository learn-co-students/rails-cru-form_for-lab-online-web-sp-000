class GenresController < ApplicationController
    def index 
        @genres = Genre.all 
    end 

    def show 
        @genres = Genre.find(params[:id])
    end 

    def new 
        @genres = Genre.new 
    end 

    def create 
        @genres = Genre.new(genre_params(:name))
        @genres.save 
        redirect_to genre_path(@genres)
    end 

    def update 
        @genres = Genre.find(params[:id])
        @genres.update(genre_params(:name))
        redirect_to genre_path(@genres)
    end 

    def edit 
        @genres = Genre.find(params[:id])
    end 

    private

    def genre_params(*args)
      params.require(:genre).permit(*args)
    end
end