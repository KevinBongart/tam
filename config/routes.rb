Rails.application.routes.draw do
  resources :routes
  resources :transfers
  resources :stops

  root 'routes#index'
end
