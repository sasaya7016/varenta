Rails.application.routes.draw do
  root "products#index"
  get "products/news"
  get "products/price"
  get "products/hairstyle"
  get "products/staff"
  get "products/shop"
  get "products/contact"
end
