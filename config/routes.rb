Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'confirmations',
    omniauth_callbacks: 'users/omniauth'
  }
  # devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  resources :dashboard, only: [:index]
  root to: "dashboard#index"
end
