Rails.application.routes.draw do
  resources :trees
  get 'home/index'
  get 'home/pricing'
  get "up" => "rails/health#show", as: :rails_health_check
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  root "home#index"
  devise_scope :user do
    #get '/users', to: 'devise/registrations#new'
    #get '/users/password', to: 'devise/passwords#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
