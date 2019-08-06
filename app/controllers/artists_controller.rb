class ArtistsController < ApplicationController
    def show
        set_artist
    end

    def edit
        set_artist
    end

    def new
        @artist = Artist.new
    end

    def update
        set_artist
        if @artist.update(artist_params)
            redirect_to @artist
        else
            redirect_to edit_artist_path
        end
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.save
            redirect_to @artist
        else
            redirect_to new_artist_path
        end
    end

    private
        def set_artist
            @artist = Artist.find(params[:id])
        end

        def artist_params
            params.require(:artist).permit(:name, :bio)
        end
end
