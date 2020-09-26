class SongsController < ApplicationController
    def index
        @form_obj = Song.all
    end
    def show
        @form_obj = Song.find(params[:id])
        # binding.pry
    end
    def edit
        @form_obj = Song.find(params[:id])
    end
    def new
        @form_obj = Song.new
    end
    def create
		@form_obj = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
		@form_obj.save
        redirect_to song_path(@form_obj)
    end
    def update        
        @form_obj = Song.find(params[:id])
        # binding.pry
        @form_obj.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@form_obj)
    end
end
