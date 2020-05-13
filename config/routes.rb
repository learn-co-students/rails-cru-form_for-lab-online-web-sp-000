Rails.application.routes.draw do

  # ARTISTS
  resources :artists, only: [:index, :new, :show, :create, :edit, :update]
  resources :genres, only: [:index, :new, :show, :create, :edit, :update]
  resources :songs, only: [:index, :new, :show, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
