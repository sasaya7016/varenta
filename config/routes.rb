Rails.application.routes.draw do
  # get 'products/index'
  root "products#index"
  get "products/staff"
end
