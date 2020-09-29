class GenresController < ApplicationController
    def new
        @genre = Genre.new

    end

    def create
        genre = Genre.new(params.require(:genre).permit(:name))
        if genre.save
            redirect_to genre_path(genre)
        else
            redirect_to new_genre_path
        end
    end

    def edit
        @genre = Genre.find_by(id: params[:id])
    end

    def update
        genre = Genre.find_by(id: params[:id])
        genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(genre)
    end

    def show
        @genre = Genre.find_by(id: params[:id])
    end
end
