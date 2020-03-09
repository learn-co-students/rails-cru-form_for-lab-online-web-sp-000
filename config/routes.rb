Rails.application.routes.draw do
  get 'songs_controller/edit'

  get 'songs_controller/new'

  get 'songs_controller/show'

  resources :songs
  resources :genres
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
