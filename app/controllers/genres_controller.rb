class GenresController < ApplicationController

    def show
        @genre = Genre.find_by(id: params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params(:name, :bio))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find_by(id: params[:id])
    end

    def update
        @genre = Genre.update(genre_params(:name, :bio))
        redirect_to genre_path(@genre)
    end

    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

end
