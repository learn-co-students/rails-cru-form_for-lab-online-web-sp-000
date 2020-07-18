class GenresController < ApplicationController

    def show
        @genre = Genre.find(params[:id])
    end

    def edit
        @genre = Genre.find(params[:id])
        render 'form'
    end

    def new
        @genre = Genre.new
        render 'form'
    end

    def create
        @genre = Genre.create(s_params(:genre, :name))
        redirect_to genre_path(@genre)
    end

    def update
        @genre = Genre.update(s_params(:genre, :name))
        redirect_to genre_path(@genre)
    end

end
