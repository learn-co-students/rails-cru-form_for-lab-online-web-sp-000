class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def show
    
  end

  private
    def artist_params(*args)
      params.require(:artist).permit(*args)
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end  
end
