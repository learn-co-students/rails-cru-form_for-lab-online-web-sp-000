Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists

  patch 'artists/:id', to: 'artists#update'
  # resources :artists, except: [:destroy, :index]
  patch 'genres/:id', to: 'genres#update'
  # resources :genres, except: [:destroy, :index]
  patch 'songs/:id', to: 'songs#update'
  # resources :songs, except: [:detroy, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
