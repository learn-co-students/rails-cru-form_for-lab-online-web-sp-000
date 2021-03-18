class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = genre_finder
    end

    def create
        @genre = Genre.new(params(:name))
    end

    def new
        @genre = Genre.new
    end

    def update
        @genre = Genre.new(params(:name ))
    end

    def edit
        @genre = genre_finder
    end

    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

    def song_finder
        @genre = Genre.find(params[:id])
    end

end
