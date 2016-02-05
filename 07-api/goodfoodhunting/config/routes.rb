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
    resources :likes
    
    get '/dashboard' => 'dashboard#index'

    # get '/' => 'dishes#index'
    root 'dashboard#index'
  end

  namespace :api do
    resources :dishes do
      resources :likes, only: [:create]
    end
  end

  # post '/api/dishes/:id/likes' => 'api::likes#create'

end
