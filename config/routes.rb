Rails.application.routes.draw do
  get 'users/new'

  get 'users/update'

  get 'users/show'

  get 'users/index'

  devise_for :users

  root to: 'welcome#index'
  resources :users
end
