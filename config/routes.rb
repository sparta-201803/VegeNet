Rails.application.routes.draw do
  resources :customers
  root 'customers#index'
  # devise_for :users
end
