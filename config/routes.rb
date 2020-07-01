Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :pets
  
  post 'session/create', to: 'session#create'
  post 'session/logout', to: 'session#destroy'

end
