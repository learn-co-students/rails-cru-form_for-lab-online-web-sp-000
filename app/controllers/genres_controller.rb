class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = genre_finder
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(params[:name])
        @genre.save
        redirect_to genres_path(@genre)
    end

    def edit
        @genre = genre_finder
    end

    def update
        @genre = Genre.update(params[:name])
    end

    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

    def genre_finder
        @genre = Genre.find(params[:id])
    end
end
