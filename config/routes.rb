Rails.application.routes.draw do
  root to: 'home#index'
  get '/home' => 'home#index'
  get '/establishments' => 'establishments#index'
  get '/establishments/:id' => 'establishments#show'
end
