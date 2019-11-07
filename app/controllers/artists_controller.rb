require 'pry'
class ArtistsController < ApplicationController
  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    binding.pry
    @artist = Artist.find_by id: '1'
	  @artist.update(artist_params(:name, :bio))
	  redirect_to artist_path(@artist)
	end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  private
 
	def artist_params(*args)
		params.require(:artist).permit(*args)
	end
end
