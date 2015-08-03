Myflix::Application.routes.draw do
  root to: 'pages#front'
  get 'ui(/:action)', controller: 'ui'
  get '/sign_in', to: 'sessions#new'
  get '/home', to: 'videos#index'
  get '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:create, :destroy]

  resources :videos, only: [:index, :show] do
    collection do
      get 'search', to: 'videos#search'
    end
  end
  resources :categories, only: [:show]

  get '/register', to: 'users#new'

  resources :users, only: [:create]
end