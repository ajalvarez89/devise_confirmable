Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'confirmations'
  }
  resources :home, only: [:index]
  resources :dashboard, only: [:index]
  root to: "dashboard#index"
end
