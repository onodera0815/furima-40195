Rails.application.routes.draw do
  devise_for :users
  resources :goods_posts
  root to: 'goods_posts#index'
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
