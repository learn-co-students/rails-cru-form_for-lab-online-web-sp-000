class ArtistsController < ApplicationController
  def new 
    @artist = Artist.new
end 

def create 
  @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
end 

def update
#binding.pry
  @artist = Artist.find(params[:id])
  @artist.update(artist_params)
  redirect_to artist_path(@artist)
end 

def edit 
 # binding.pry
  @artist = Artist.find(params[:id])
end 

def index
  @artist = Artist.all
end 

def show 
 # binding.pry
  @artist = Artist.find(params[:id])
end 

    private
    def artist_params
        params.require(:artist).permit(:name, :bio)
    end 
end
