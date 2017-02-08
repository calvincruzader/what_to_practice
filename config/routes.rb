Rails.application.routes.draw do
  get 'song/view'

  get 'song/show'

  get 'songs/view'

  get 'songs/show'

  get 'composer/show'

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
