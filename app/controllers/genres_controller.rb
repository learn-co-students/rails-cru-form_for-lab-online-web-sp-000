class GenresController < ApplicationController
    before_action :find_genre, only: [:show, :edit]

    def index
        @genres = Genre.all
      end

    def show
    end

    def new
      @genre = Genre.new
    end
  
    def create
      @genre = Genre.find_or_create_by(genre_params)
      redirect_to @genre
    end
    
    def edit
    end

    def update
      @genre = Genre.update(genre_params)
      redirect_to @genre
    end
    
    private
  
    def genre_params
      params.require(:genre).permit(:name)
    end
  
    def find_genre
      @genre = Genre.find(params[:id])
    end
end
