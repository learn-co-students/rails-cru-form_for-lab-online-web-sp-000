class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update]

  def new
    @genre = Genre.new
  end

  def show
    
  end

  def create
    @genre = Genre.new(genre_params(params[:genre].keys))
    if @genre.save
      redirect_to @genre
    else
      render 'new'
    end
  end

  private
    def genre_params(*args)
      params.require(:genre).permit(*args)
    end
    def set_genre
      @genre = Genre.find(params[:id])
    end
end
