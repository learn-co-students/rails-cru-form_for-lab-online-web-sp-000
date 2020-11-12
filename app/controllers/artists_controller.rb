class ArtistsController < ApplicationController

  def index
    @artists = Artist.all 
  end

  def create
    @artist = Artist.new
  end

  def show
  end

  def update
  end


end
