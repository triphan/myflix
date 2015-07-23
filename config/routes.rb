Myflix::Application.routes.draw do
  root to: 'pages#front'
  get 'ui(/:action)', controller: 'ui'

  resources :videos, only: [:index, :show]
  resources :categories, only: [:show]
end