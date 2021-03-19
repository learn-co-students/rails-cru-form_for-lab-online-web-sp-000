<<<<<<< HEAD
class ArtistsController < ApplicationController
    def index
        @artist = Artist.all
    end

    def show
        @artist = artist_finder
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(params[:name, :bio])
        @artist.save
        redirect_to artists_path(@artist)
    end

    def edit
        @artist = artist_finder
    end

    def update
        @artist = Artist.update(params[:name, :bio])
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

    def artist_finder
        @artist = Artist.find(params[:id])
    end
=======
class ArtistController < ApplicationController
>>>>>>> e9924184c05c5ef397ef79a9074ffa85abd6eb9a
end
