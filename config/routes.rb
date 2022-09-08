Rails.application.routes.draw do
  get 'details/index'
  get 'teams/index'
  get 'public_utilities/index'
  devise_for :users
  root to: 'schedules#index'
  resources :trading_companies
  resources :prime_contractors
end
