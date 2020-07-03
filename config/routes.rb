Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  root "products#index"
  resources :products, only: [:new, :create]
  get "products/price"
  get "products/hairstyle"
  get "products/staff"
  get "products/shop"
  get "products/contact"

  get "products/management"
  get "products/test"
  
  
  get "messages/index"
  resources :messages, only: [:edi, :update]
  resources :groups, only: [:new, :create]
  
  get "posts/more"
  namespace :posts do
    resources :searches,only: [:index]
  end
  resources :posts


  resources :tweets do
    resources :comments
  end

  # resources :users, only: :show

end
