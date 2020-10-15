Rails.application.routes.draw do
  # resources :songs, only: [:create, :update, :show, :new]
  # resources :genres, only: [:create, :update, :show, :new]
  # resources :artists, only: [:create, :update, :show, :new]
  resources :artists, :genres, :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
