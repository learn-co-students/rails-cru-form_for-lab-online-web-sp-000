Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :edit, :update, :show]
  resources :genres, only: [:new, :create, :edit, :update, :show]
  resources :artists, only: [:new, :create, :edit, :update, :show]
end
