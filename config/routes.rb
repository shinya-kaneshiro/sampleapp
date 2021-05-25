Rails.application.routes.draw do

  root 'static_pages#top'

  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users

  resources :posts do
    resource :favorites, only: [:create, :destroy]
  end
  # get '/posts', to: 'posts#show'
  # post '/posts/create', to: 'posts#create'
  # get 'favorites/create'
  # get 'favorites/destroy'

end
