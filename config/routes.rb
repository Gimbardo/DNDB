Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users

  root 'home#main'

  resources :users, only: [:index, :show]
  resources :gifts, only: [:new, :create, :show, :index]

  resources :whies, except: [:show]
  resources :whats, except: [:show]
  resources :whos, except: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
