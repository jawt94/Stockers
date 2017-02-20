Rails.application.routes.draw do
  get 'welcome/index'
  resources :users, only: [:new, :created, :show]
  resources :portfolios do
    resources :stocks
  end
  resources :companies, only: [:index, :show]
  resources :sessions, only: [:new, :destroy]
  get '/sessions/login', to: 'sessions#login', as: 'login'
  post '/sessions/login', to: 'sessions#create'
  get '/sessions/logout', to: 'sessions#destroy', as: "logout"
  root "welcome#index"

end
