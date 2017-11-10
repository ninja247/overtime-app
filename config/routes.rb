Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # config/routes.rb
  root to: 'static#homepage'
end
