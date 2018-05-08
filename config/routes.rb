Rails.application.routes.draw do
  resources :products
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/admin/:id", to: "users#admin_home"
  get "/admin/:id/users", to: "users#admin_users"
  get "/admin/:id/products", to: "users#admin_products"
  get "/admin/:id/users/:id/products", to: "users#admin_user_product"
  get "/admin/:id/users/:id/products/:id", to: "products#show"
  post "/admin/:id/users/:id/products/:id/destroy", to: "products#destroy"

  get "/user/:id/products", to: "products#index"
  post "/user/:id/products/:id/destroy", to: "products#destroy"

  get "home/index"
  root "home#index"
end
