Rails.application.routes.draw do
  get 'artists/index'

  get 'artists/show'

  get 'artists/new'

  get 'artists/create'

  get 'artists/edit'

  get 'artists/update'

  resources :songs
  resources :genres
  resources :artists
end
