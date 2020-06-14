class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find_by(id: params[:id])
    end

    def new

    end

    def create
    
    end

    def edit
        @song = Song.find_by(id: params[:id])
    end

    def update
    
    end

end