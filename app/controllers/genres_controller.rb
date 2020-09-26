class GenresController < ApplicationController
    def create
        @genre = Genre.create(name: params[:genre][:name])
        redirect_to genre_path(@genre)
    end

    def new
        @genre = Genre.new
    end

    def show
        @genre=Genre.find(params[:id])
    end

    def edit
        @genre=Genre.find(params[:id])
    end

    def update
        @genre=Genre.find(params[:id])
        @genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end
end
