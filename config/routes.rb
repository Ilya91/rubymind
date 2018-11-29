Rails.application.routes.draw do
  root 'pages#home', as: 'home'
  get 'welcome/index'
  get 'about' => 'pages#about', as: 'about'
  resources :posts do
    resources :comments
  end
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
