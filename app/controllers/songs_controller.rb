class SongsController < ApplicationController
    before_action :set_instance, only: [:edit, :update, :show, :delete]
  def index
    @all = Song.all
  end

  def new
  end

  def create
    @instance = Song.new(post_params)
    @instance.genre = Genre.find_or_create_by(params[:song][:genre_id])
    @instance.artist = Artist.find_or_create_by(params[:song][:artist_id])
    @instance.save
    redirect_to song_path(@instance)
  end

  def edit
  end

  def update
    @instance.update(post_params)
    redirect_to song_path(@instance)
  end

  def show
  end

  def delete
  end

  private
    def set_instance
      @instance = Song.find(params[:id])
    end

    def post_params
      params.require(:song).permit(:name)
    end
end
