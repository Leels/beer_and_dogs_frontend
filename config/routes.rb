Rails.application.routes.draw do
  root to: 'home#index'
  get '/home' => 'home#index'

  resources :establishments do
    resources :reviews
  end
  # get '/establishments' => 'establishments#index'
  # get '/establishments/:id' => 'establishments#show'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
