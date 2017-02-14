Rails.application.routes.draw do
  resources :composers
  resources :songs
  resources :composers
  get 'song/view'

  get 'song/show'

  get 'songs/view'

  get 'songs/show'

  get 'composer/show'

  get 'home/index'
  root 'composers#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
