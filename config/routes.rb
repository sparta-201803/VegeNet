Rails.application.routes.draw do

  devise_for :users
  resources :users, only:[:index,:show,:edit,:new,]
  resources :products
  root 'products#index'

end
