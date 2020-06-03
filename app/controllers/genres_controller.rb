class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
  end

  def destroy
  end

  def index
    @genres = Genre.all
  end

  def show
  end
end
