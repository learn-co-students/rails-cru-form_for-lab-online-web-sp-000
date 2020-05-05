Rails.application.routes.draw do
  resources :songs
  resources :genres, only: %i[show new create edit update]
  resources :artists, only: %i[show new create edit update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
