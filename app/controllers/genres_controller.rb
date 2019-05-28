class GenresController < ApplicationController
    before_action :set_instance, only: [:edit, :update, :show, :delete]
  def index
    @all = Genre.all
  end

  def new
  end

  def create
    @instance = Genre.new(post_params)
    @instance.save
    redirect_to genre_path(@instance)
  end

  def edit
  end

  def update
    @instance.update(post_params)
    redirect_to genre_path(@instance)
  end

  def show
  end

  def delete
  end

  private
    def set_instance
      @instance = Genre.find(params[:id])
    end

    def post_params
      params.require(:genre).permit(:name)
    end

end
