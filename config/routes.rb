Rails.application.routes.draw do
  root 'pages#home', as: 'home'
  get 'welcome/index'
  get 'about' => 'pages#about', as: 'about'
  resources :posts do
    resources :comments
  end
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'profile' => 'profile#index', as: 'profile'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
