class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = genre_finder
    end

<<<<<<< HEAD
=======
    def create
        @genre = Genre.new(params(:name))
    end

>>>>>>> e9924184c05c5ef397ef79a9074ffa85abd6eb9a
    def new
        @genre = Genre.new
    end

<<<<<<< HEAD
    def create
        @genre = Genre.new(params[:name])
        @genre.save
        redirect_to genres_path(@genre)
=======
    def update
        @genre = Genre.new(params(:name ))
>>>>>>> e9924184c05c5ef397ef79a9074ffa85abd6eb9a
    end

    def edit
        @genre = genre_finder
    end

<<<<<<< HEAD
    def update
        @genre = Genre.update(params[:name])
    end

=======
>>>>>>> e9924184c05c5ef397ef79a9074ffa85abd6eb9a
    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

<<<<<<< HEAD
    def genre_finder
        @genre = Genre.find(params[:id])
    end
=======
    def song_finder
        @genre = Genre.find(params[:id])
    end

>>>>>>> e9924184c05c5ef397ef79a9074ffa85abd6eb9a
end
