Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :genres, only: [:index, :new, :create, :show, :update, :edit]
  resources :artists, only: [:index, :new, :create, :show, :update, :edit]
  resources :songs, only: [:index, :new, :create, :show, :update, :edit]
end
