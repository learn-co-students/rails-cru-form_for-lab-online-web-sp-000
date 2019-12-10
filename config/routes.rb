Rails.application.routes.draw do
  get 'songs/new'

  get 'songs/edit'

  get 'songs/index'

  get 'songs/show'

  get 'genre/new'

  get 'genre/create'

  get 'genre/edit'

  get 'genre/update'

  get 'genre/destroy'

  get 'genre/index'

  get 'genre/show'

  resources :songs
  resources :genres
  resources :artists

  # get 'artists/new'
  #
  # get 'artists/create'
  #
  # get 'artists/edit'
  #
  # get 'artists/update'
  #
  # get 'artists/destory'
  #
  # get 'artists/index'
  #
  # get 'artists/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
