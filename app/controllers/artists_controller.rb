class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def new
    @artist = Artist.new
  end

  def show
    
  end

  def create
    @artist = Artist.new(artist_params(params[:artist].keys))
      if @artist.save
        redirect_to @artist
      else
        render 'new'
      end
  end

  private
    def artist_params(*args)
      params.require(:artist).permit(*args)
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end  
end
