Rails.application.routes.draw do
  devise_for :users
  root to: 'schedules#index'
  resources :trading_companies
  resources :prime_contractors
  resources :public_utilities
  resources :teams
  resources :details
end
