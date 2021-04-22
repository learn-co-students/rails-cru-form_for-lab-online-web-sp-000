Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, except: [:destroy]
  resources :artists, except: [:index, :destroy]
  resources :genres, except: [:index, :destroy]
end
