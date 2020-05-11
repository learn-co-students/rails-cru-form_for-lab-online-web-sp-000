class GenresController < ApplicationController
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(post_params(params[:genre][:name]))
        redirect_to genre_path(@genre)
    end

    def show
        find_genre_instance
    end

    def edit
        find_genre_instance
    end

    def update
        find_genre_instance
        @genre.update(post_params(params[:genre][:name]))
        redirect_to genre_path(@genre)
    end

    private

    def post_params(*args)
        params.require(:genre).permit(:name)
    end

    def find_genre_instance
        @genre = Genre.find(params[:id])
    end

end