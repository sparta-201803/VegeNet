Rails.application.routes.draw do
  devise_for :users
  resources :transactions do
    get 'buy', on: :member
  end 
  post "/transactions/new" => "transactions#new"
  resources :products
  resources :users, only:[:index,:show,:edit,:new,]
  root 'products#index'

end
