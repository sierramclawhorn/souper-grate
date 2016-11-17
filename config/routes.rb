Rails.application.routes.draw do
  
  resources :categories do
    resources :recipes
  end

  resources :ratings

  resources :users
  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  root 'categories#index'

end
