class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by_id(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end


end
