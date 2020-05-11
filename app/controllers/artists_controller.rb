class ArtistsController < ApplicationController
    
    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(post_params(params[:artist][:title], params[:artist][:bio]))
        redirect_to artist_path(@artist)
    end

    def show
        find_instance_of_artist
    end

    def edit
        find_instance_of_artist
    end

    def update
        find_instance_of_artist
        @artist.update(post_params(params[:artist][:name], params[:artist][:bio]))
        redirect_to artist_path(@artist)
    end

    private 
    def post_params(*args)
        params.require(:artist).permit(:name, :bio)
    end

    def find_instance_of_artist
        @artist = Artist.find(params[:id])
    end

end