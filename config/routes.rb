Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists
  # get '/genres/:id', to: 'genres#show'
  # get '/songs/:id', to: 'songs#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
