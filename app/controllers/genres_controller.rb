class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end
  
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(Genre_params(:name))
    #@genre.name = params[:name]
    #@genre.bio = params[:bio]
    @genre.save
    
    redirect_to genre_path(@genre)
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    @genre.update(Genre_params(:name))
    
    redirect_to genre_path(@genre)
  end
  
  def Genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
