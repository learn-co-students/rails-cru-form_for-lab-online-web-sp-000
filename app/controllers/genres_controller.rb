class GenresController < ApplicationController
   def show 
      set_genre
   end 

   def new 
      @genre = Genre.new 
   end 

   def create
      @genre = Genre.create(genre_params)
      @genre.save 

      redirect_to genre_path(@genre)
   end 

   def edit 
      set_genre
   end 

   def update
      set_genre 
      @genre.update(genre_params)
      @genre.save 

      redirect_to genre_path(@genre)
   end 

   private 
   def genre_params
      params.require(:genre).permit(:name)
   end 

   def set_genre 
      @genre = Genre.find(params[:id])
   end 
end
