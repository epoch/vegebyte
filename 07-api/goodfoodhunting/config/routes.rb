Rails.application.routes.draw do


          # controller#method
  get '/' => 'dishes#index'
  get '/dishes/new' => 'dishes#new'
  post '/dishes' => 'dishes#create'
  get '/dishes/:id' => 'dishes#show'
  get '/dishes/:id/edit' => 'dishes#edit'
  patch '/dishes/:id' => 'dishes#update'
end
