Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :comments
  resources :friend_requests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#about'

end
