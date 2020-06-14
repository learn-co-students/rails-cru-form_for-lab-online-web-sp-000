Rails.application.routes.draw do
  get 'genres/show'

  get 'artists/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:new, :create, :edit, :show]
  patch '/artists/:id', to: "artists#update"
  resources :genres, only: [:new, :create, :edit,  :show]
  patch '/genres/:id', to: "genres#update"
  resources :songs, only: [:index, :new, :create, :edit, :show]
  patch '/songs/:id', to: "songs#update"
end
