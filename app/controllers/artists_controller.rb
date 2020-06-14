class ArtistsController < ApplicationController
  before_action :set_instance, only: [:edit, :update, :show, :delete]

  def index
  end

  def new
  end

  def create
    @instance = Artist.new(post_params)
    @instance.save
    redirect_to artist_path(@instance)
  end

  def edit
  end

  def update
    @instance.update(post_params)
    redirect_to artist_path(@instance)
  end

  def show
  end

  def delete
  end

private
  def set_instance
    @instance = Artist.find(params[:id])
  end

  def post_params
    params.require(:artist).permit(:name, :bio)
  end
end
