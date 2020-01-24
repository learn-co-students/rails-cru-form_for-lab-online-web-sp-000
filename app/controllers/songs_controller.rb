class SongsController < ApplicationController
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
        params.require(:song).permit(:name)
    end
end
