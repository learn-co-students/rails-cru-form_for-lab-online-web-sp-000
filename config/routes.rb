Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/new'

  get 'songs/edit'

  get 'songs/show'

  get 'artists/new'

  get 'artists/edit'

  get 'artists/show'

  get 'genres/new'

  get 'genres/edit'

  get 'genres/show'

  get 'genres_controller/new'

  get 'genres_controller/edit'

  get 'genres_controller/show'

  get 'artists_controller/new'

  get 'artists_controller/edit'

  get 'artists_controller/show'

  get 'songs_controller/new'

  get 'songs_controller/edit'

  get 'songs_controller/show'

  resources :songs
  resources :genres
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
