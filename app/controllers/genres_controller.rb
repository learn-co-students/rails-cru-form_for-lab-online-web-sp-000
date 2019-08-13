class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update]

  def show
    
  end

  private
    def genre_params(*args)
      params.require(:genre).permit(*args)
    end
    def set_genre
      @genre = Genre.find(params[:id])
    end
end
