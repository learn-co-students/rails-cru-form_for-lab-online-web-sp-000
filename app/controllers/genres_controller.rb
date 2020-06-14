class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        #strong params
        @genre = Genre.new(genre_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        #strong params
        @genre = Genre.find(params[:id])
        @genre = Genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    private
    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

end
