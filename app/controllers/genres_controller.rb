class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
    end
    
    def new
    end

    def create
        @genre = Genre.new(strong_params(:name))
        @genre.save
        redirect_to Genre.last
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre = Genre.update(strong_params(:name))
        redirect_to genre_path(@genre)
    end

    private

    def strong_params(*args)
      params.require(:genre).permit(*args)
    end
end
