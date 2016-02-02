Rails.application.routes.draw do

          # controller#method
  # get '/' => 'dishes#index'
  # get '/dishes/new' => 'dishes#new'
  # post '/dishes' => 'dishes#create'
  # get '/dishes/:id' => 'dishes#show'
  # get '/dishes/:id/edit' => 'dishes#edit'
  # patch '/dishes/:id' => 'dishes#update'
  # delete '/dishes/:id' => 'dishes#destroy'
  resources :dishes

  namespace :admin do
    resources :dishes
    resources :users

    get '/dashboard' => 'dashboard#index'

    # get '/' => 'dishes#index'
    root 'dashboard#index'
  end

  namespace :api do
    resources :dishes
  end

end
