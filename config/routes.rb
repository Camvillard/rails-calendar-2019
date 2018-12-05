Rails.application.routes.draw do
  root to: 'pages#home'
  get '/styles', to: 'pages#styles'
  resources :orders, only: [:show, :create, :edit, :update] do
    resources :payments, only: [:new, :create]
  end
  get '/orders/:order_id/confirmation', to: 'orders#confirmation', as: 'confirmation'
  get 'orders/:order_id/thanks', to: 'orders#thanks', as: 'thanks'
end
