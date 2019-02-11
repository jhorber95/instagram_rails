Rails.application.routes.draw do
  get 'search/index'
  get 'home/index'
  devise_for :users

  root to: 'home#index'
  resources :users, only: %i[show edit update]
  resources :posts, only: %i[new create show destroy]
end
