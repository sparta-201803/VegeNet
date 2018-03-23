Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:index,:show,:edit,:new,]
  resources :customers
  root 'users#index'
end
