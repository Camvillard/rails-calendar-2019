Rails.application.routes.draw do
  root to: 'pages#home'
  get '/styles', to: 'pages#styles'
  # get '/orders/:order_id/shipping', to: 'orders#new_shipping', as: 'new_shipping'
  resources :orders, only: [:show, :create, :edit, :update] do
    resources :payments, only: [:new, :create]
  end
  # patch '/orders/:order_id/shipping', to: 'orders#update', as: 'shipping'
  get '/orders/:order_id/confirmation', to: 'orders#confirmation', as: 'confirmation'
end
