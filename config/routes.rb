Rails.application.routes.draw do
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

  get '/orders' => 'orders#index'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'

end
