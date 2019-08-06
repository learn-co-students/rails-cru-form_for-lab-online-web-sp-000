class GenresController < ApplicationController
    def show
        set_genre
    end

    def edit
        set_genre
    end

    def new
        @genre = Genre.new
    end

    def update
        set_genre
        if @genre.update(genre_params)
            redirect_to @genre
        else
            redirect_to edit_genre_path
        end
    end

    def create
        @genre = Genre.new(genre_params)
        if @genre.save
            redirect_to @genre
        else
            redirect_to new_genre_path
        end
    end

    private
    def set_genre
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end
end
