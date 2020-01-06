Rails.application.routes.draw do
  resources :posts
  root to:  'pages#home'
  devise_for :users
  resources :comments, only: [:create, :destroy]
  resources :users, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
