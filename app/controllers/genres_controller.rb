class GenresController < ApplicationController

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(post_params)
        @genre.save
        redirect_to genre_path(@genre) #show page
    end

    def edit
        @genre = Genre.find_by(id: params[:id])
    end

    def update
        @genre = Genre.find_by(id: params[:id])
        @genre.update(post_params)
        @genre.save
        redirect_to genre_path(@genre) #show page
    end

    def show
        @genre = Genre.find_by(id: params[:id])
    end

    private
    def post_params
        params.require(:genre).permit(:name)
    end


end

