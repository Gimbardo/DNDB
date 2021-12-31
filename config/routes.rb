Rails.application.routes.draw do
  #API
  namespace :api, defaults: { format: :json } do
    get '/paolofox' => 'gifts#new'
  end

  #WebApp
  get 'users/index'
  get 'users/show'
  devise_for :users

  root 'home#main'

  resources :users, only: [ :index ]
  resources :gifts, except: [ :edit, :update ]

  resources :whies, except: [ :show ]
  resources :whats, except: [ :show ]
  resources :whos, except: [ :show ]
end
