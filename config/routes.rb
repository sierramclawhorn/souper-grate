Rails.application.routes.draw do
resources :categories do
  resources :recipes
end

end
