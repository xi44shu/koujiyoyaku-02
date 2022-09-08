Rails.application.routes.draw do
  get 'details/index'
  devise_for :users
  root to: 'schedules#index'
  resources :trading_companies
  resources :prime_contractors
  resources :public_utilities
  resources :teams
end
