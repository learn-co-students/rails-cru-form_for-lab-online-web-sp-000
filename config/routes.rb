Rails.application.routes.draw do
  resources :songs, :genres, :artists, only: [:new, :create, :edit, :update, :show, :index]
  # resources :genres
  # resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
