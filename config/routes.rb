Rails.application.routes.draw do
  resources :songs, only:[:create, :new, :show, :index, :edit, :update]
  resources :genres, only:[:create, :new, :show, :index, :edit, :update]
  resources :artists, only:[:create, :new, :show, :index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
