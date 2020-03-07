class ArtistsController < ApplicationController
  def show
    @artist = Artist.find_by_id(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(name: params[:artist][:name], bio:params[:artist][:name])
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find_by_id(params[:id])
  end

  def update
    @artist = Artist.find_by_id(params[:id])
    @artist.update(name: params[:artist][:name], bio: params[:artist][:name])
    redirect_to artist_path(@artist)
  end
end
