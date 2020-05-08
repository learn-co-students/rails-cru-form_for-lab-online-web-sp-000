class GenresController < ApplicationController
  def show
    @genre = find_genre_by_params_id
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = find_genre_by_params_id
  end

  def update
    @genre = find_genre_by_params_id
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private

  def find_genre_by_params_id
    Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
