Rails.application.routes.draw do
  resources :lists do
    resources :columns, except: [:index, :show] do
      resources :items, except: [:index, :show]
    end
  end
  resources :companies
  resources :posts do
    scope module:  :posts do
      resources :likes, only: [:create, :destroy]
    end
  end
  root 'pages#home'

  get 'about', to: "pages#about"
  devise_for :users
  resources :comments, only: [:create, :destroy]
  resources :users, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
