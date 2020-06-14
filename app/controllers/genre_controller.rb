class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find_by(arams[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new
        @genre.name = params[:genre][:name]
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find_by(params[:id])
        @genre.update(genre_params)
        redirect_to genre_path(@genere)
    end

    def update
        @genre = Genre.find_by(params[:id])
        @genre.update(genre_params)
        redirect_to genre_path(@genere)
    end

    private 
    
    def genre_params
        params.require(:genre).permit(:name)
    end

end