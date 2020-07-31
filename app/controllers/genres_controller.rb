class GenresController < ApplicationController
  before_action :set_genre, only: [:edit, :update, :show]

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))
  
    redirect_to genre_path(@genre)
  end

  def show
  end

  def edit
  end

  def update
    @genre.update(params.require(:genre).permit(:name))

    redirect_to genre_path(@genre)
  end

  def show
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end
end
