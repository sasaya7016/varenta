Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  
  root "products#index"
  resources :products, only: [:new, :create]
  get "products/news"
  get "products/price"
  get "products/hairstyle"
  get "products/staff"
  get "products/shop"
  get "products/contact"
  get "products/test"
  
  resources :products, only: [:index, :new, :create]

  resources :users, only: :show
end
