Rails.application.routes.draw do
  devise_for :users
  resources :trees
  get 'home/index'
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"
end
