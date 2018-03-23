Rails.application.routes.draw do
  get 'products/index'

  get 'products/new'

  get 'products/create'

  get 'products/edit'

  get 'products/update'

  get 'products/show'

  get 'products/destroy'

  # devise_for :users
end
