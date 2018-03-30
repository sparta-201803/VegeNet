Rails.application.routes.draw do
  devise_for :users
  resources :transactions
  post "/transactions/new" => "transactions#new"
  resources :products do
    post 'buy', on: :member
  end
  resources :users, only:[:index,:show,:edit,:new,]
  root 'products#index'

end
