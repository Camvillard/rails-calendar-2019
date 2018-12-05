Rails.application.routes.draw do
  root to: 'pages#home'
  get '/styles', to: 'pages#styles'
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
