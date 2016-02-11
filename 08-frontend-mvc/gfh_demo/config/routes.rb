Rails.application.routes.draw do


  resources :dishes
  resources :comments

  root 'pages#home'
end
