Rails.application.routes.draw do
  devise_for :users
  # config/routes.rb
  root to: 'static#homepage'
end
