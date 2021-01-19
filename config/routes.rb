Rails.application.routes.draw do
  resources :songs, only: [:create, :update, :show]
  resources :genres, only: [:create, :update, :show]
  resources :artists, only: [:create, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
