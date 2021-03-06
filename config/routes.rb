Rails.application.routes.draw do
  post 'buyer_token' => 'buyer_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/buyers' => 'buyers#index'
  post '/buyers' => 'buyers#create'
  get '/buyers/:id' => 'buyers#show'
  patch '/buyers/:id' => 'buyers#update'
  delete '/buyers/:id' => 'buyers#destroy'

  get '/items' => 'items#index'
  post '/items' => 'items#create'
  get '/items/:id' => 'items#show'
  patch '/items/:id' => 'items#update'
  delete '/items/:id' => 'items#destroy'

  get '/fabrics' => 'fabrics#index'
  post '/fabrics' => 'fabrics#create'
  get '/fabrics/:id' => 'fabrics#show'
  patch '/fabrics/:id' => 'fabrics#update'
  delete '/fabrics/:id' => 'fabrics#destroy'

  get '/measurements' => 'measurements#index'
  post '/measurements' => 'measurements#create'
  get '/measurements/:id' => 'measurements#show'
  patch '/measurements/:id' => 'measurements#update'
  delete '/measurements/:id' => 'measurements#destroy'

  get '/shopping_carts' => 'shopping_carts#index'
  post '/shopping_carts' => 'shopping_carts#create'
  get '/shopping_carts/:id' => 'shopping_carts#show'
  patch '/shopping_carts/:id' => 'shopping_carts#update'
  delete '/shopping_carts/:id' => 'shopping_carts#destroy'

  get '/submitted_orders' => 'submitted_orders#index'
  post '/submitted_orders' => 'submitted_orders#create'
  get '/submitted_orders/:id' => 'submitted_orders#show'
  patch '/submitted_orders/:id' => 'submitted_orders#update'
  delete '/submitted_orders/:id' => 'submitted_orders#destroy'

end
