Rails.application.routes.draw do
  get 'genres/index'

  get 'genres/show'

  get 'genres/new'

  get 'genres/edit'

  get 'artists/index'

  get 'artists/show'

  get 'artists/new'

  get 'artists/edit'

  get 'songs/index'

  get 'songs/show'

  get 'songs/new'

  get 'songs/edit'

  resources :genres
  resources :artists
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
