class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update, :destroy]
    def index
        @genres = Genre.all
    end

    def show
    end

    def new
        @genre = Genre.new
    end

    def edit
    end

    def create
        @genre = Genre.new(genre_params(:name))
        @genre.save 
        redirect_to genre_path(@genre)
    end

    def update
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    private
        def set_genre
        @genre = Genre.find(params[:id])
        end

        def genre_params(*args)
        params.require(:genre).permit(*args)
        end
  
end
