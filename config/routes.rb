Rails.application.routes.draw do
  resources :genres
  resources :artists
  resources :songs
  get 'genres/dashboard'

  get 'genres/stats'

  get 'genres/financials'

  get 'genres/settings'

  get 'artists/dashboard'

  get 'artists/stats'

  get 'artists/financials'

  get 'artists/settings'

  get 'songs/dashboard'

  get 'songs/stats'

  get 'songs/financials'

  get 'songs/settings'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
