Rails.application.routes.draw do
  resources :trips
  resources :routes
  resources :transfers
  resources :stops

  root 'routes#index'
end
