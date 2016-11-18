Rails.application.routes.draw do

  resources :categories do
    resources :recipes do
      resources :ratings
    end
  end

  resources :users
  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/add_ingredient' => 'quantities#new'
  post '/add_ingredient' => 'quantities#create'

  root 'categories#index'

end
