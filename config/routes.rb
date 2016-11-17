Rails.application.routes.draw do
resources :categories do
  resources :recipes
end


  root 'categories#index'
end
