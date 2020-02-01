class ArtistsController < ApplicationController


    def new
      @artist = Artist.new
    end

    def create
      @artist = Artist.new(artist_params)
      #@song.name = params[:song][:name]
      #@song.artist_id = params[:song][:artist_id]
      @artist.save
      redirect_to artist_path(@artist)
    end

    def show
      @artist = Artist.find(params[:id])
    end

    def edit
      @artist = Artist.find(params[:id])
    end

    def update
      @artist = Artist.find(params[:id])
      #@song.update(name: params[:song][:name], artist_id: params[:song][:artist_id]), genre_id: params[:song][:genre_id])
      @artist.update(artist_params)
      @artist.save
      redirect_to artist_path(@artist)
    end

    private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end



end
