# EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

Rails.application.routes.draw do
    #html
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

    #json
  namespace :api do

    get  "/carted_products" => "carted_products#index"
    get "/carted_products/:id" => "carted_products#show"
    post "/carted_products" => "carted_products#create"
    delete "/carted_products/:id" => "carted_products#destroy"
    # patch "/carted_products/:id" => "carted_products#update"

    get  "/users" => "users#index"
    # get "/users/:id" => "users#show"
    post "/users" => "users#create"
    # delete "/users/:id" => "users#destroy"
    # patch "/users/:id" => "users#update"

    get  "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"
    post "/orders" => "orders#create"
    # delete "/orders/:id" => "orders#destroy"
    # patch "/orders/:id" => "orders#update"

    # get  "/sessions" => "sessions#index"
    # get "/sessions/:id" => "sessions#show"
    post "/sessions" => "sessions#create"
    # delete "/sessions/:id" => "sessions#destroy"
    # patch "/sessions/:id" => "sessions#update"

    get  "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    delete "/products/:id" => "products#destroy"
    patch "/products/:id" => "products#update"
  end
end