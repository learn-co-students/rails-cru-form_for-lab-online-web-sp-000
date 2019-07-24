class ArtistsController < ApplicationController

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        set_artist_by_params_id
    end

    def new
        @artist = Artist.new
    end

    def show
        set_artist_by_params_id
    end

    def update
        set_artist_by_params_id
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    private

        def set_artist_by_params_id
            @artist = Artist.find(params[:id])
        end

        def artist_params
            params.require(:artist).permit(:name, :bio)
        end
end
