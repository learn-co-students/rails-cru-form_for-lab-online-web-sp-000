Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/show'

  get 'songs/new'

  get 'songs/edit'

  get 'songs/create'

  get 'songs/update'

  get 'genres/show'

  get 'genres/new'

  get 'genres/edit'

  get 'genres/create'

  get 'genres/update'

  get 'artists/show'

  get 'artists/new'

  get 'artists/edit'

  get 'artists/create'

  get 'artists/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :genres

  resources :artists

  resources :songs


end
