Rails.application.routes.draw do
  root to: 'pages#home'
  get '/styles', to: 'pages#styles', as: 'styles'
  get '/contact', to: 'pages#contact', as: 'contact'
  post '/contact', to: 'pages#send_mail'
  get '/mentions-legales', to: 'pages#mentions_legales', as: 'mentions'
  resources :orders, only: [:show, :create, :edit, :update] do
    resources :payments, only: [:new, :create]
  end
  get '/orders/:order_id/confirmation', to: 'orders#confirmation', as: 'confirmation'
  get 'orders/:order_id/thanks', to: 'orders#thanks', as: 'thanks'
end
