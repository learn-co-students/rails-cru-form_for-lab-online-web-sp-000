class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
