Rails.application.routes.draw do
  get 'details/index'
  get 'teams/index'
  get 'public_utilities/index'
  get 'prime_contractors/index'
  devise_for :users
  root to: 'schedules#index'
  resources :trading_companies
end
