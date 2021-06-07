Rails.application.routes.draw do
  # get 'genres/create'
  #
  # get 'genres/update'
  #
  # get 'genres/show'
  #
  # get 'songs/create'
  #
  # get 'songs/update'
  #
  # get 'songs/show'
  #
  # get 'artists/create'
  #
  # get 'artists/update'
  #
  # get 'artists/show'

  resources :songs, :artists, :genres
end
