Rails.application.routes.draw do
  get 'artists/index'

  get 'artists/show'

  get 'artists/create'

  get 'artists/edit'

  get 'artists/update'

  get 'artists/destroy'

  get 'artists/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :songs
resources :artists
resources :genres
end
