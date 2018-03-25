Rails.application.routes.draw do

  devise_for :users
  resources :users, only:[:index,:show,:edit,:new,]
  resources :products do
  get 'buy', on: :member
  end
  root 'products#index'

end
