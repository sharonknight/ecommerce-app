Rails.application.routes.draw do
  
  devise_for :users
  root to: 'products#index'
  patch '/orders/:id' => 'orders#create'
  get '/orders/new' => 'orders#new'
  get '/orders' => 'orders#index'

  post '/carted_products' => 'carted_products#create'
  get '/carted_products/new' => 'carted_products#new'
  get '/carted_products' => 'carted_products#index'

  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch'/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'
 

end
