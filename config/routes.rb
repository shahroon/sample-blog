Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :posts
    root to: "dashboard#index"
  end
  resources :posts
  root to: "blog#index"
end
