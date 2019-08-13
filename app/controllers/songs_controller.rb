class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def show
  end

  private
   
    def set_song
      @song = Song.find(params[:id])
    end
end
