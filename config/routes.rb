Rails.application.routes.draw do

  root 'static_pages#top'

  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users

  resources :posts
  # get '/posts', to: 'posts#show'
  # post '/posts/create', to: 'posts#create'

end
