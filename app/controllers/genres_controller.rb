class GenresController < ApplicationController

      def new
        @genre = Genre.new
      end

      def create
        @genre = Genre.new(genre_params)
        #@song.name = params[:song][:name]
        #@song.genre_id = params[:song][:genre_id]
        @genre.save
        redirect_to genre_path(@genre)
      end

      def show
        @genre = Genre.find(params[:id])
      end

      def edit
        @genre = Genre.find(params[:id])
      end

      def update
        @genre = Genre.find(params[:id])
        #@song.update(name: params[:song][:name], genre_id: params[:song][:genre_id]), genre_id: params[:song][:genre_id])
        @genre.update(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
      end

      private

    def genre_params
      params.require(:genre).permit(:name)
    end





end
