Rails.application.routes.draw do
  resources :genres, only: [:new, :index, :show, :create, :edit, :update]
  resources :artists, only: [:new, :index, :show, :create, :edit, :update]
  resources :songs, only: [:new, :index, :show, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
