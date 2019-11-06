Rails.application.routes.draw do
  get 'artists/index'

  get 'artists/new'

  get 'artists/update'

  get 'artists/show'

  get 'genres/index'

  get 'genres/new'

  get 'genres/update'

  get 'genres/show'

  get 'songs/index'

  get 'songs/show'

  get 'songs/new'

  get 'songs/create'

  get 'songs/edit'

  get 'songs/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
