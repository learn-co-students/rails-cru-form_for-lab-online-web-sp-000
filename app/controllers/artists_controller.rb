class ArtistsController < ApplicationController
    layout 'artists_form', only: [:new, :edit]
    def show
    end
   
    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    private
    def post_params
        params.require(:artist).permit(:name, :bio)
    end
end
